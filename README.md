SSH-Check
=====
Purpose: 

	To launch program X only if there is a specific SSH connection presently active.

<img src="https://github.com/xeoron/SSH-Check/blob/master/images/sshcheck_screenshot.png?raw=true"/>

Why is this useful?
Sometimes you don't realize that the SSH connection has timed-out or dropped for any number of other reasons, which is important if you want to ensure your SOCK Proxy is running before running your web-browser, use your network file-manager or secure your IM , or even bit-torrent program.

It will launch the pre-set program, only if there is a SSH connection to tunnelr.com (this can be changed in the sourcecode). When the program is already running, then it will ask to restart it or force it to stop running or do nothing. And, if there is no SSH connection while the program is running, then it will force the program exit.

Program Defaults
======
Reprogram which program to launch by dropping a program onto SSH-Check.

By default SSH-Check has these settings

	program : "Firefox"
	service : "tunnelr.com"

When you run the program for the first time, it will setup several things, including a ~/.ssh-check folder where you will find a settings manager called "iconfigSSHC.py".
To update the settings, at the command-line, use the following commands:

	cd ~/.ssh-check
	iconfigSSHC.py -h                 <-- program options
	iconfigSSHC.py -up "vlc"          <-- update program name
	iconfigSSHC.py -us "192.168.1.5"  <-- update service name

Requirements
=====
Mac OS X Snow Leopard or higher

For NoneDisruptive Messages on OS X.8 (Mountain Lion) or higher the following is required

	1) Commandline support for the Notification Center using Ben Waldie's 
	   Display Notification Centert Alert Automator Action script.
	2) Display_Notification.workflow 

SSH-Check auto-installs following support files in the folder ~/.ssh-check

	Display_Notification.workflow
	iconfigSSHC.py  
	config.xml

It will also ask for permission to install Ben Waldie's Display Notification Centert Alert Automator Action script

Note: with all of the support files setup, you can display a notification from the command line using the following command:

	automator -D title='Title text' -D subtitle='Subtitle text' -D message='Message text' ~/.ssh-check/Display_Notification.workflow
  
	
