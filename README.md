SSH-Check
=====
Purpose: 

	To launch program X only if there is a specific SSH connection presently active.

<img src="https://github.com/xeoron/SSH-Check/blob/master/images/sshcheck_screenshot.png?raw=true"/>

Why is this useful?
Sometimes you don't realize that the SSH connection has timed-out or dropped for any number of other reasons, which is important if you want to ensure your SOCK Proxy is running before running your web-browser, use your network file-manager or secure your IM , or even bit-torrent program.

It will launch the pre-set program, only if there is a SSH connection to tunnelr.com (this can be changed, see below details). And, if the program of choice is already running, SSH-Check will then ask you to either Restart It or Force It To Stop Running in X number of seconds (default is 0) or Do Nothing; but if there is no SSH connection while the program is running, then it will force the program exit.

If the there is no SSH connection to the server, then the service name will be copied to the system clipboard.

Program Defaults
======
Reprogram which program to launch by dropping a program onto SSH-Check.

By default SSH-Check has these settings

	program : "Firefox"
	service : "tunnelr.com"
	service-level: "locally"

When you run the program for the first time, it will setup several things, including a ~/.ssh-check folder where you will find a settings manager called "iconfigSSHC.py".
To update the settings, at the command-line, use the following commands:

	cd ~/.ssh-check
	./iconfigSSHC.py -up "Safari"       <-- update program name
	./iconfigSSHC.py -us "192.168.1.5"  <-- update service name
	./iconfigSSHC.py -rl				<-- running service must be only from local user
	./iconfigSSHC.py -rg				<-- running service can be by any user
	./iconfigSSHC.py -x					<-- copy the service name to the system clipboard
	./iconfigSSHC.py -h                 <-- program options
	
SSH-Check auto-installs following support files in the folder ~/.ssh-check

	iconfigSSHC.py  
	config.xml
	Display_Notification.workflow		<-- OS X.8 Mountain Lion, only.

Requirements
=====
Mac OS X Snow Leopard or higher

For NoneDisruptive Messages OS X.9 Mavericks has native support, but for OS X.8 it will ask for permission to install Ben Waldie's Display Notification Centert Alert Automator Action script

	1) Commandline support for the Notification Center using Ben Waldie's 
	   Display Notification Centert Alert Automator Action script.
	2) Display_Notification.workflow 


	
