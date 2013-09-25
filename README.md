SSH-Check
=====
Purpose: 

	To launch program X only if there is a specific SSH connection presently active.

<img src="https://github.com/xeoron/SSH-Check/blob/master/images/sshcheck_screenshot.png?raw=true"/>

Why is this useful?
Sometimes you don't realize that the SSH connection has timed-out or dropped for any number of other reasons, which is important if you want to ensure your SOCK Proxy is running before running your web-browser, use your network file-manager or secure your IM , or even bit-torrent program.

It will launch the pre-set program, only if there is a SSH connection to tunnelr.com (this can be changed) after waiting 6 seconds to cancel the start up request. But, if the program is already running, then it will ask to restart it or force it to stop running or do nothing. And, if there is no SSH connection while the program is running, then it will force the program exit.

Program Defaults
======
Reprogram which program to launch by dropping a program onto SSH-Check.

By default SSH-Check has these settings

	program : "Firefox"
	service : "tunnelr.com"

You will have to change the service value, in the source code, to meet your needs.


Requirements
=====
Mac OS X Snow Leopard or higher

For NoneDisruptive Messages on OS X.8 (Mountain Lion) or higher the following is required

	1) Commandline support for the Notification Center using Ben Waldie's 
	   Display Notification Centert Alert Automator Action script.
	2) Display_Notification.workflow 

SSH-Check auto-installs Display_Notification.workflow in ~/.ssh-check for you, but requires you to manually download and install Ben Waldie's Automator script here:

 	http://www.automatedworkflows.com/2012/08/26/display-notification-center-alert-automator-action-1-0-0/	


Note: you can display a notification from the command line using the following command:

	automator -D title='Title text' -D subtitle='Subtitle text' -D message='Message text' ~/.ssh-check/Display_Notification.workflow
  
	
