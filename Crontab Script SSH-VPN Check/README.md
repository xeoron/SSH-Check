Tunnel Check
=====
Purpose: 

Crontab script to run once a minute that checks to see if a SSH and VPN Tunnel is open to service of your choosing, 
and if not terminate program of your choice.


Setup
======

Step 0)
    Edit the script and fill in the vpn/ssh service and program name fields 

    SERVICE='vpn/ssh-service-name-here'
    PROGRAM='program-Name-Here'

In the Terminal run the below commands
Step 1) 

    sudo mv ./tunnel_check.sh /opt/local/bin/

Step 2) 

    crontab -e

Step 3) 

    Press 'i'

Step 4) Paste this into the crontab

    * * * * * /bin/bash /opt/local/bin/tunnel_check.sh > /dev/null

Step 5) Press ":wq" followed by the enter key

Requirements
=====
Mac OS X.11 or higher


License
=====
Copyleft 2017 under the <a href="http://www.gnu.org/licenses/gpl-3.0.html">GPL v3</a> or higher.

	
