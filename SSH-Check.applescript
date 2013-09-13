#! /usr/bin/osascript
(*
	Name: SSH-Check
	Version: 0.4.2
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
property countdown : "6" #time out in X seconds

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
		return "Yes"
	else
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

on msg(notice, title)
	try
		return display dialog notice with title title
	on error
		return
	end try
end msg

on serviceAlive(openConnection)
	if openConnection contains service then
		return 1
	else
		return 0
	end if
end serviceAlive

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
	
	set cmdSSH to ps & " | " & grepSSH & " | " & grepConnect & " | " & awkOne
	set cmdAppRun to ps & " | " & grepProg & " | " & grepDrop
	set cmdAppKill to ps & " | " & grepProg & " | " & grepDrop & " | " & awkTwo & " | " & xkill
	
	set tunnel to ""
	set titlemsg to "SSH Service is Down!"
	try #check for ssh connected to defined service
		set result to item 2 of paragraphs of (do shell script cmdSSH)
		copy result to tunnel
		if serviceAlive(tunnel) is equal to 0 then
			msg("Don't run " & program & ", because there's no connection to " & service & ".", titlemsg)
			return
		end if
	on error #throws error if it fails
		if isAppRunning(cmdAppRun) is "Yes" and serviceAlive(tunnel) is equal to 0 then
			msg("It is not safe to run " & program & ". Force it to quit by pressing \"OK\"!", titlemsg)
			killRunningApp(cmdAppKill)
		else if serviceAlive(tunnel) is equal to 0 then
			msg("Don't run " & program & ", because there's no connection to " & service & ".", titlemsg)
		end if
		return
	end try
	
	#Ask if you want to run your program, kill it, or quietly stop
	set titlemsg to "Active SSH Connection to: " & tunnel
	if isAppRunning(cmdAppRun) is "Yes" then # should we kill & restart the running app?
		set btnOpt to {"Restart", "Exit SSH-Check", "Turn Off"}
		set qMsg to program & " is running! Do you want to: Restart It, Turn it Off, or Exit SSH-Check"
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
		set btnOpt to {"Launch", "Stop"}
		set qMsg to "Starting " & program & " in " & countdown & " seconds!"
		try
			set yesOrNo to button returned of (display dialog qMsg buttons btnOpt default button "Launch" with title titlemsg giving up after countdown)
			if yesOrNo is "Stop" then
				return
			end if
		on error
			return
		end try
	end if
	
	#Prepare to launch a program
	set appPath to POSIX path of ("/Applications/")
	--msg("apppath: " &appPath, "Msg")
	set nameOffset to offset of program in appPath
	--msg("nameoffset" " & nameOffset, "Msg")
	set folderPath to text 1 thru (nameOffset - 1) of appPath
	--msg("folderpath: " & folderPath, "Msg")
	try #start program up in the background
		do shell script folderPath & program & ".app" & "/Contents/MacOS/program  & >/dev/null &"
		delay 1
		tell application program to activate
	on error
		display dialog "Error launching " & program with title "Error 0"
	end try
	
end run