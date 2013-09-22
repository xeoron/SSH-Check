#! /usr/bin/osascript
(*
	Name: SSH-Check
	Version: 0.5.1
	Author: Jason Campisi
	Date: 9.7.2013
	License: GPL
	Purpose: Only start a bitTorrent app if the system is signed into a SSH service.
	
	Default program is Firefox and ssh service tunnelr.com and
	To reprogram what program you want to launch by default, 
	drop a program onto SSH-Check.
	
	NOTE: 
	For even more security this program is best combined with a cron job to 
	check if SSH connection is still alive, otherwise kill your  App.
	
*)

property service : "tunnelr.com"
property program : "Firefox"
property programBackup : "Firefox" #don't remove to overt droplet bug

property countdown : "6" #time out in seconds
property DNCLocation : "~/Library/Workflows/Display_Notification.workflow"
property DisplayNoticeCenter : false #script switchings to true when running on OS X.8 or higher & if DNCLocation exists

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
	copy prog to program
	
	osXVersion()
	msg("SSH-ChecK", "Setting " & program, "Now set to startup " & program)
	delay countdown
	run
end open

on resetProgram()
	#fix empty list and stops droplet bug
	if program is "" then
		copy programBackup to program
	end if
end resetProgram

on FileExists(theFile)
	tell application "System Events"
		if exists file theFile then
			return true
		else
			return false
		end if
	end tell
end FileExists

on osXVersion()
	set text item delimiters to "."
	if FileExists(DNCLocation) is equal to true and ((text item 2 of (system version of (system info))) as number) >= 8 then
		set DisplayNoticeCenter to true
	else
		set DisplayNoticeCenter to false
	end if
end osXVersion

on notify(title, subtitle, message)
	(* 	OS X 8+ make use of System Notifacation Center
 Requires: SETUP 
 	1) automation workflow to be installed from http://www.automatedworkflows.com/2012/08/26/display-notification-center-alert-automator-action-1-0-0/
	2) Create a new workflow in Automator containing only the Display Notification Center Alert action.
	3) In the variables section at the bottom of the workflow construction area in Automator's window, create three variables named title, subtitle, and message.
	4) Give message a default value like "Notification sent." You can leave the default values other two blank.
	5) Drag each variable to its corresponding field in the Display Notification Center Alert action.
	6) Save the workflow as Display Notification.wflow. A good place to save it is in ~/Library/Workflows (create the folder if necessary).

	Now you can display a notification from the command line using the following command:
		automator -D title='Title text' -D subtitle='Subtitle text' -D message='Message text' ~/Library/Workflows/'Display Notification.wflow'  
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

on isAppRunning()
	try
		tell application program
			if it is running then
				return true
			end if
		end tell
	on error
		return false
	end try
	return false
end isAppRunning

on killRunningApp()
	try
		tell application program -- doesn't automatically launch app
			if it is running then
				quit
			end if
		end tell
	on error
		do shell script "ps x | grep " & program & ".app | grep -v grep | awk '{print $1}' | xargs kill -9"
	end try
end killRunningApp

on msg(title, subtitle, message)
	if DisplayNoticeCenter is equal to true then -- use OS X Noticafaction Center
		notify(title, subtitle, message)
	else
		try
			return display dialog message with title title
		on error
			return
		end try
	end if
end msg

on serviceAlive()
	try #check for ssh connected to defined service
		set cmdSSH to "ps x | grep -i ssh | grep '.*@.*" & service & "' | awk '{print $8}'"
		set sshcon to item 2 of paragraphs of (do shell script cmdSSH)
		copy sshcon to tunnel
		if tunnel contains service then
			return tunnel
		else
			return 0
		end if
	on error
		return 0
	end try
end serviceAlive

on run
	resetProgram()
	osXVersion() #comment this line if you don't have the display-notification-center-alert-automator-action installed
	
	set titlemsg to "SSH Service is Down!"
	if isAppRunning() is equal to true and serviceAlive() is equal to 0 then
		set message to "It is not safe to run " & program & ". Force it to quit by pressing \"OK\"!"
		msg(titlemsg, "Warning", message)
		killRunningApp()
		return #exit SSH-Check
	else if serviceAlive() is equal to 0 then
		msg(titlemsg, "Warning", "Don't run " & program & ", because there's no connection to " & service & ".")
		return #exit SSH-Check
	end if
	
	#Ask if you want to run your program, kill it, or quietly stop
	set titlemsg to "Active SSH Connection to: " & serviceAlive()
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
		set qMsg to "Starting " & program
		if DisplayNoticeCenter is equal to true then
			msg("SSH-Check", serviceAlive(), qMsg & " in " & (countdown / 2) & " seconds!")
			delay (countdown / 2)
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