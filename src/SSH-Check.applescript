#! /usr/bin/osascript
(*
	Name: SSH-Check
	Version: 0.7.2
	Author: Jason Campisi
	Date: 9.7.2013
	License: GPL
	Purpose: Only start a app if the system is signed into a SSH service.
	
	Default program is Firefox and ssh service tunnelr.com while
	searching for the service run by the local user.
	To reprogram what program you want to launch, then merely 
	drop a program onto SSH-Check. 
	To change other settings run at the cmdline: 
		 ~/.ssh-check/iconfigSSHC.py
	NOTE: 
	For even more security this program is best combined with a cron job to 
	check if SSH connection is still alive, otherwise kill your  App.
	
*)

property service : "tunnelr.com"
property program : "Firefox"
property programBackup : "Firefox" #don't remove to overt droplet bug
property serviceBackup : "tunnelr.com"

property countdown : "6" #time out in seconds
property DNCLocation : "~/.ssh-check/Display_Notification.workflow"
property XMLSettings : "~/.ssh-check/iconfigSSHC.py"
property DNCA : "~/Library/Automator/Display Notification Center Alert.action"
property DisplayNoticeCenter : false #script switchings to true when running on OS X.8 or higher & if "DNCLocation & DNCA" exists
property ServiceLevel : false # false for local and true for global search to see if there is a connection to 'service'

on open these_items
	(* these_items holds a alias list that looks like this: "hostname:Applications:ProgName.app:"
	NOTE: global variables store whatever you put in them, even after the program restarts 
	it will contain what was last placed in it, there by ignoring whatever the 
	hardcoded preset value is. By using bug/feature, reprogramming the default launch 
	program is easy using the below droplet code *)
	
	set prog to ""
	set prog to these_items as string
	
	#isolate only the program-name, then strip out ".app" & set it to the global 'program' variable
	set text item delimiters to ":"
	set prog to text item 3 of prog
	set text item delimiters to "."
	set prog to text item 1 of prog
	sshCheckSettings()
	updateXML(prog)
	copy prog to program
	
	setDisplay()
	msg("SSH-ChecK", "Setting " & program, "Now set to startup " & program)
	delay countdown
	run
end open

on resetProgram()
	#fix empty list and stops droplet bug
	set DisplayNoticeCenter to false
end resetProgram

on getOSXNumber()
	set text item delimiters to "."
	return ((text item 2 of (system version of (system info))) as number)
end getOSXNumber

on setDisplay()
	if getOSXNumber() ³ 8 and FileExists(DNCLocation) is equal to true and FileExists(DNCA) is true then
		set DisplayNoticeCenter to true
	else
		set DisplayNoticeCenter to false
	end if
end setDisplay

on FileExists(theFile)
	tell application "System Events"
		if exists file theFile then
			return true
		end if
	end tell
	return false
end FileExists

on FolderExists(theFolder)
	tell application "System Events"
		if exists folder theFolder then
			return true
		end if
	end tell
	return false
end FolderExists

on updateXML(programName)
	if FileExists(XMLSettings) is true then
		try
			set update to do shell script XMLSettings & space & "-up" & space & quoted form of programName
			if update is "True" then
				return true
			else
				set update to do shell script XMLSettings & space & "-c" & space & quoted form of programName
				set update2 to do shell script XMLSettings & space & "-up" & space & quoted form of programName
				if update is "True" and update2 is "True" then
					return true
				end if
			end if
			error
		end try
	end if
	return false
end updateXML

on setupService()
	if FileExists(XMLSettings) is true then
		try
			set ser to do shell script XMLSettings & space & "-s"
			if ser does not contain "None" and ser does not contain "" then
				copy ser to service
				return true
			end if
			error
		end try
	end if
	if service is "" then
		copy serviceBackup to service
	end if
	return false
end setupService

on setServiceLevel()
	#Should the ssh tunnel to service X be run by the current user or any user on the system?
	#True is to search globally and False to search locally
	if FileExists(XMLSettings) is true then
		try
			set slevel to do shell script XMLSettings & space & "-sl"
			if slevel is equal to "globally" then
				set ServiceLevel to true
			else if slevel is equal to "locally" then
				set ServiceLevel to false
			end if
			#msg("service level", "", slevel & " = " & ServiceLevel)
			return ServiceLevel
			error
		end try
	end if
	
	if ServiceLevel is "" then
		set ServiceLevel to false
	end if
	return ServiceLevel
end setServiceLevel

on setupProgram()
	if FileExists(XMLSettings) is true then
		try
			set prog to do shell script XMLSettings & space & "-p"
			if prog does not contain "None" and prog does not contain "" then
				copy prog to program
				return true
			end if
			error
		end try
	end if
	if program is "" then
		copy programBackup to program
	end if
	return false
end setupProgram

on sshCheckSettings() #return bool
	set configFolder to ".ssh-check"
	set configPath to "~/" & configFolder
	setServiceLevel()
	
	if FolderExists(configPath) is false or FileExists(DNCLocation) is false or FileExists(XMLSettings) is false or (FileExists(DNCA) is false and getOSXNumber() ³ 8) then
		## setup path, display notification data, and config file manager
		## Note: curling for now, but might start stuffing the workflow folder inside SSH-Check binary to remove a point of failure 
		set mypath to "cd " & configPath & space & "&&" & space
		set supportLoc to (POSIX path of (path to me as string)) & "Contents/Support/"
		
		try
			if FolderExists(configPath) is false then
				set cmdMakePath to "mkdir -p" & space & configPath
				do shell script cmdMakePath #create path
				delay 0.5 #note: FileExist will fail, even if true, if the program does not pause first
			end if
			
			if FileExists(XMLSettings) is false then
				#note: the first time XMLSettings (iconfigSSHC.py) is asked for data it will generate config.xml, 
				#then all other times it will use the data set in the file. And, if config.xml becomes corrupt, iconfigSSHC.py will replace it
				try
					do shell script mypath & "cp " & supportLoc & "iconfigSSHC.py ./"
					do shell script mypath & "chmod +x" & space & XMLSettings
				end try
				delay 0.5
			end if
			
			if FileExists(DNCA) is false and getOSXNumber() ³ 8 then
				#setup Automator Display Notification Center Action script
				set alertAction to "Display_Notification_Center_Alert.action.zip"
				do shell script mypath & "cp " & supportLoc & alertAction & space & "./"
				delay 0.5
				
				if FileExists(configPath & "/" & alertAction) is true then
					set cmdUnzipAlertAction to mypath & "unzip -u" & space & alertAction
					do shell script cmdUnzipAlertAction
					set cmdCleanUpAlertAction to mypath & "rm -rf __MACOSX/" & space & alertAction
					do shell script cmdCleanUpAlertAction
				end if
				set qMsg to "SSH-Check would like to setup Automator Notification Center. Press 'Yes' to setup and 'No' to skip!"
				set btnOpt to {"Yes", "No"}
				try
					set yesOrNo to button returned of (display dialog qMsg buttons btnOpt default button "No" with title "SSH-Check Setup Needs Your Help" giving up after countdown * 60)
					if yesOrNo is "Yes" then
						do shell script mypath & "open " & quoted form of "Display Notification Center Alert.action"
					end if
					error
					msg("SSH-Check: Error", "", "Failed to install action script!")
				end try
				delay 0.5
			end if
			
			if FolderExists(configPath) is true and FileExists(DNCLocation) is false then
				#setup display notification center workflow
				set DNWorkflow to "Display_Notification.workflow.zip"
				set cmdUnzipDNWorkflow to mypath & "unzip -u" & space & DNWorkflow
				set cmdCleanUpDNWorkflow to mypath & "rm -rf __MACOSX/" & space & DNWorkflow
				do shell script mypath & "cp " & supportLoc & DNWorkflow & space & "./"
				delay 0.5
				
				if FileExists(configPath & "/" & DNWorkflow) is true then
					do shell script cmdUnzipDNWorkflow
					do shell script cmdCleanUpDNWorkflow
				end if
			end if
		on error
			msg("Setup Failed:", "", configPath)
			setupService()
			setupProgram()
			return false
		end try
		
		#re-check display settings to see if DNC is working now, but first pause to allow finder time to refresh.
		delay countdown / 3
		setDisplay()
		if DisplayNoticeCenter is true then
			msg("SSH-Check: Setup", configPath & " settings are current.", "Display Notification Center Is Active!")
			delay 1
		end if
	end if
	
	#loadSettings from config file
	if setupService() is true and setupProgram() is true then
		return true
	end if
	
	return false
end sshCheckSettings

on notify(title, subtitle, message)
	(* 	OS X 8+ make use of System Notifacation Center
 Requires: SETUP 
 	1) automation workflow to be installed from http://www.automatedworkflows.com/2012/08/26/display-notification-center-alert-automator-action-1-0-0/
	2) Create a new workflow in Automator containing only the Display Notification Center Alert action.
	3) In the variables section at the bottom of the workflow construction area in Automator's window, create three variables named title, subtitle, and message.
	4) Give message a default value like "Notification sent." You can leave the default values other two blank.
	5) Drag each variable to its corresponding field in the Display Notification Center Alert action.
	6) Save the workflow as Display_Notification.workflow. A good place to save it is in ~/.ssh-check (create the folder if necessary).

	Now you can display a notification from the command line using the following command:
		automator -D title='Title text' -D subtitle='Subtitle text' -D message='Message text' ~/.ssh-check/Display_Notification.workflow
 *)
	
	if title as text is not "" then set title to " -D title=" & quoted form of (title as text)
	if subtitle as text is not "" then set subtitle to " -D subtitle=" & quoted form of (subtitle as text)
	if message as text is not "" then set message to " -D message=" & quoted form of (message as text)
	try
		do shell script "automator" & space & title & space & subtitle & space & message & space & DNCLocation & space & "2>/dev/null"
	on error
		set DisplayNoticeCenter to "false"
		msg("SSH-Check: Error", "", "Unable to comminucate with the Notifacation Center automator workflow action: " & DNCLocation)
	end try
end notify

on msg(msgTitle, subtitle, message)
	if DisplayNoticeCenter is equal to true then -- use OS X Noticafaction Center
		notify(msgTitle, subtitle, message)
	else
		try
			return display dialog message with title msgTitle
		on error
			return
		end try
	end if
end msg

on isAppRunning()
	try
		tell application program
			if it is running then
				return true
			end if
		end tell
	end try
	return false
end isAppRunning

on killRunningApp()
	try
		tell application program -- doesn't launch app
			if it is running then
				quit
			end if
		end tell
	on error
		do shell script "ps x | grep " & program & ".app | grep -v grep | awk '{print $1}' | xargs kill -9"
	end try
end killRunningApp

on serviceAlive()
	try #check for ssh connected to defined service
		set sshcon to ""
		if ServiceLevel is false then
			#is the service being run by the current user?
			set cmdSSH to "ps x | grep -i ssh | grep '.*@.*" & service & "' | awk '{print $8}'"
			set sshcon to item 2 of paragraphs of (do shell script cmdSSH)
		else
			#is the service being run by any user
			set cmdSSH to "ps a | grep -i ssh | grep '.*@.*" & service & "' | awk '{print $8}'"
			set sshcon to item 1 of paragraphs of (do shell script cmdSSH)
		end if
		copy sshcon to tunnel
		
		if tunnel contains service then
			return tunnel
		end if
	end try
	return 0
end serviceAlive

on run
	resetProgram()
	sshCheckSettings()
	setDisplay()
	
	set isServiceAlive to serviceAlive()
	set titlemsg to "SSH Service is Down!"
	if isAppRunning() is equal to true and isServiceAlive is equal to 0 then
		set message to "It is not safe to run " & program & ". Force it to quit by pressing \"OK\"!"
		msg(titlemsg, "Warning " & service, message)
		killRunningApp()
		return #exit SSH-Check
	else if isServiceAlive is equal to 0 then
		msg(titlemsg, "Warning about " & service, "Don't run " & program & ", because there's no connection to " & service & ".")
		return #exit SSH-Check
	end if
	
	#Ask if you want to run your program, kill it, or quietly stop
	set titlemsg to "Active SSH Connection to: " & isServiceAlive
	if isAppRunning() is equal to true then # should we kill & restart the running app?
		set btnOpt to {"Restart", "Exit SSH-Check", "Turn Off"}
		set qMsg to program & " is running! Do you want to: Restart It, Turn it Off, or Exit SSH-Check"
		set choice to button returned of (display dialog qMsg buttons btnOpt default button "Exit SSH-Check" with title titlemsg)
		if choice is "Restart" then
			killRunningApp()
		else if choice is "Turn Off" then
			killRunningApp()
			return #exit SSH-Check
		else #choice equals Cancel
			return #exit SSH-Check
		end if
	else
		set qMsg to "Starting " & program & space
		if DisplayNoticeCenter is equal to true then
			msg("SSH-Check", serviceAlive() & space & "is active", qMsg & "up now!")
			delay (countdown / 3)
		else
			set btnOpt to {"Launch", "Stop"}
			try
				set qMsg to qMsg & " in " & countdown & " seconds!"
				set yesOrNo to button returned of (display dialog qMsg buttons btnOpt default button "Launch" with title titlemsg giving up after countdown)
				if yesOrNo is "Stop" then
					return
				end if
			on error
				return
			end try
		end if
	end if
	
	#Prepare to launch a program
	set appPath to POSIX path of ("/Applications/")
	--msg("info:", "Msg", "apppath: " & appPath)
	set nameOffset to offset of program in appPath
	--msg("info:", "Msg", "nameoffset" " & nameOffset)
	set folderPath to text 1 thru (nameOffset - 1) of appPath
	--msg("info:", "Msg", "folderpath: " & folderPath)
	try #start program up in the background
		do shell script folderPath & program & ".app" & "/Contents/MacOS/program  & >/dev/null &"
		delay 1
		tell application program to activate
	on error
		msg("SSH-Check: Error", "Error", "An Error occured when trying to launch " & program)
	end try
	
end run