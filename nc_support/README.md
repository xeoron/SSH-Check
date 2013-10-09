Notification Center - Commandline Support
====
DisplayNotificationCenterAlertAction is from <a href="http://www.automatedworkflows.com/2012/08/26/display-notification-center-alert-automator-action-1-0-0/">automatedworkflows.com</a>

SSH-Check sets this all up for you without asking anything from the user, except for permission to install the action script. It will install the workflow to ~/.ssh-check and the automator script to ~/Library/Automator/

But, to manually setup here is the guide:

	0) Requires OS X.8 (Mountain Lion) or higher
	1) Download and install Ben Waldie's Display Notification Centert Alert Automator Action script from here:
		http://www.automatedworkflows.com/2012/08/26/display-notification-center-alert-automator-action-1-0-0/
	2) Create a new workflow in Automator containing only the Display Notification Center Alert action.

<img src="https://github.com/xeoron/SSH-Check/blob/master/images/automator_nc_workflow.png?raw=true"/>


	3) In the variables section at the bottom of the workflow construction area in Automator's window, create three variables named title, subtitle, and message.
	4) Give message a default value like "Notification sent." You can leave the default values other two blank.
	5) Drag each variable to its corresponding field in the Display Notification Center Alert action.
	6) Save the workflow as Display_Notification.wflow. A good place to save it is in ~/Library/Workflows/Applications (create the folder if necessary).

Usage
===
Now you can display a notification from the command line using the following command:

		automator -D title='Title text' -D subtitle='Subtitle text' -D message='Message text' ~/Library/Workflows/Applications/Display_Notification.workflow



