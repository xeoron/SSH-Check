SSH-Check
=====
Purpose: 

	To launch program X only if there is a specific SSH connection presently active.

<img src="https://github.com/xeoron/SSH-Check/blob/master/images/sshcheck_screenshot.png?raw=true"/>

Why is this useful?
Sometimes you don't realize that the SSH connection has timed-out or dropped for any number of other reasons, which is important if you want to ensure your SOCK Proxy is running before running your web-browser, use your network file-manager or secure your IM , or even bit-torrent program.

If the program to launch is already running, then it will ask to restart it or force it to stop running or do nothing. And, if there is no SSH connection while the program is running, then it will force the program exit.


Program Defaults
======
Reprogram which program to launch by dropping a program onto SSH-Check.

By default SSH-Check has these settings

	program : "Firefox"
	service : "tunnelr.com"

You will have to change the service value, in the source code, to meet your needs.

Requirements
=====
Mac OS X and AppleScript Editor to compile.

