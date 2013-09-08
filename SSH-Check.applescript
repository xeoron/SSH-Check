(*
	Name: SSH-Check
	Version: 0.3.1
	Author: Jason Campisi
	Date: 9.7.2013
	License: GPL
	Purpose: Only start a bitTorrent app if the system is signed into a SSH service.
	
	Default program is Firefox and ssh service tunnelr.com and
	To reprogram what program you want to launch by default, 
	drop a program onto SSH-Check
	
	NOTE: 
	For even more security this program is best combined with a cron job to 
	check if SSH connection is still alive, otherwise kill your  App.
	
*)

property service : "tunnelr.com"
property program : "Firefox"
property programBackup : "Firefox" #don't remove to overt droplet bug

on open these_items
	(* these_items holds a alias list that looks like this:
   	   "hostname:Applications:ProgName.app:"
 	*)
	
	set prog to ""
	set prog to these_items as string
	
	#isolate only the program-name, then strip out ".app" & set it to the global 'program' variable
	set text item delimiters to ":"
	set prog to text item 3 of prog --3
	set text item delimiters to "."
	set prog to text item 1 of prog
	copy prog to program
	
	run
end open

on resetProgram()
	#fix empty list and stops droplet bug
	if program is "" then
		copy programBackup to program
	end if
end resetProgram

on isAppRunning(cmd)
	try
		set result to do shell script cmd
	on error
		return "No" -- if there was no grep match then the program is currently off
	end try
	if result contains program then
		--display dialog "Found: " & result with title program & " is aleady running!"
		return "Yes"
	else
		--display dialog "no!"
		return "No"
		
	end if
end isAppRunning

on killRunningApp(cmd)
	try
		do shell script cmd
	on error
		return
	end try
end killRunningApp

on msg(s) --for debugging
	try
		display dialog s with title "SSH-Check Message"
	on error
		return
	end try
end msg

on run
	
	resetProgram()
	
	set result to {}
	set ps to "ps x"
	set grepProg to "grep '" & program & ".app'"
	set grepDrop to "grep -v grep"
	set grepSSH to "grep -i ssh"
	set grepConnect to "grep '.*@.*" & service & "'"
	set awkOne to "awk '{print $8}'"
	set awkTwo to "awk '{print $1}'"
	set xkill to "xargs kill -9"
	--
	set cmdSSH to ps & " | " & grepSSH & " | " & grepConnect & " | " & awkOne
	set cmdAppRun to ps & " | " & grepProg & " | " & grepDrop
	set cmdAppKill to ps & " | " & grepProg & " | " & grepDrop & " | " & awkTwo & " | " & xkill
	
	
	try #check for ssh connected to service X
		set result to item 2 of paragraphs of (do shell script cmdSSH)
	on error #throws error if it fails
		if isAppRunning(cmdAppRun) is "Yes" then
			display dialog "It is not safe to run " & program & ". Force it to quit by pressing \"OK\"!" with title "SSH Service is down!"
			killRunningApp(cmdAppKill)
		else
			display dialog "Don't run " & program & ", because there's no connection to " & service & "." with title "SSH Service is down!"
		end if
		return
	end try
	
	#As if you want to run your program
	set titlemsg to "Active SSH Connection to: " & result
	
	if isAppRunning(cmdAppRun) is "Yes" then # should we kill & restart the running app?
		set btnOpt to {"Restart", "Exit SSH-Check", "Turn Off"}
		set qMsg to program & " is running! You can now Restart It, Turn it Off, or Exit SSH-Check"
		set choice to button returned of (display dialog qMsg buttons btnOpt default button "Exit SSH-Check" with title titlemsg)
		if choice is "Restart" then
			killRunningApp(cmdAppKill)
		else if choice is "Turn Off" then
			killRunningApp(cmdAppKill)
			return
		else #choice equals Cancel
			return
		end if
	else
		set btnOpt to {"Yes", "No"}
		set yesOrNo to button returned of (display dialog "Do still want to launch " & program & "?" buttons btnOpt default button "Yes" with title titlemsg)
		if yesOrNo is "No" then
			return
		end if
	end if
	
	set appPath to POSIX path of ("/Applications/")
	--msg("apppath: " &appPath)
	set nameOffset to offset of program in appPath
	--msg("nameoffset" " & nameOffset)
	set folderPath to text 1 thru (nameOffset - 1) of appPath
	--msg("folderpath: " & folderPath)
	try #start program up in the background
		do shell script folderPath & program & ".app" & "/Contents/MacOS/program  &> /dev/null &"
		delay 1
		tell application program to activate
	on error
		display dialog "Error launching " & program with title "Error 0"
	end try
	
end run