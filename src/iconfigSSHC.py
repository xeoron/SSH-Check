#!/usr/bin/python
__author__ = 'Jason Campisi'
# Program: iconfigSSHC.py 
ver = "0.6.2"
# Author: Jason Campisi
# Date: 9.29.13
# License: GPL 2 or higher
# Purpose: Settings manager for SSH-Check.app
#  This program is meant to be used in 2 ways
#     1) directly by a user to manage settings
#     2) to be called by another program in a different langauge (where it will parse the results)
#  If $HOME/.ssh-check/ or $HOME/.ssh-check/config.xml do not exist, then create them.
#  Next grab & display the program and service attributes from the following xml format:
# <?xml version="1.0"?>
# <data>
#     <settings name="sshcheck">
#         <program>Firefox</program>
#         <service>tunnelr.com</service>
#         <servicelevel>locally</servicelevel>
#     </settings>
# </data>


import sys, os, getpass 
import subprocess #copy to clipboard
import argparse   #ref http://pymotw.com/2/argparse/
try:
	import xml.etree.cElementTree as ET
except ImportError:
	import xml.etree.ElementTree as ET

program = "Firefox"
service = "tunnelr.com"
localOrGlobal = "locally"


def versionCompare(version1, version2):
    parts1 = [int(x) for x in version1.split('.')]
    parts2 = [int(x) for x in version2.split('.')]

    # fill up the shorter version with zeros ...
    lendiff = len(parts1) - len(parts2)
    if lendiff > 0:
        parts2.extend([0] * lendiff)
    elif lendiff < 0:
        parts1.extend([0] * (-lendiff))

    for i, p in enumerate(parts1):
        ret = cmp(p, parts2[i])
        if ret: return ret
    return 0

def getTimeHMS(sec):
	"""convert seconds into Hours:Minutes:Seconds"""
	if sec.isdigit():
		sec = int(sec)
		import datetime
		#convert seconds, then remove 1 or more 0's so there is 0h:0m:0s and not 00h:000m:00s
		t = str(datetime.timedelta(seconds=sec)).split(":")
		for i in range (len(t)): #use len so that if the time is more than 1 day, it can handle it too
			#strip out unneeded zeros, so that 00 or 09 bexome 0 & 9
			if t[i].count("0") >=2:
				t[i]="0"
			if t[i].isdigit() and int(t[i]) >0 and int(t[i]) <= 9:
				t[i]=str(int(t[i])) 
		return t[0] + ' hours, ' + t[1] + ' minutes, and ' + t[2] + ' seconds' 
	return None

def getProgram(root):
	"""Returns 1st program name in xml file or returns None"""
	for settings in root.findall('settings'):
		return settings.find('program').text
	return None

def getService(root):
	"""Returns 1st service name in xml file or returns None"""
	for settings in root.findall('settings'):
		return settings.find('service').text
	return None

def getServiceLevel(root):
	"""Returns 1st service level, where to either to search only if 
	local user is running the service or if anyone is running it"""
	for settings in root.findall('settings'):
		return settings.find('servicelevel').text
	return None

def doesFolderExist(folder):
	"""Does a folder exist? True/False"""
	try:
		return os.path.exists(folder)
	except Expection:
		return False

def makeFolder(folder):
	"""Create a folder at location X, return True/False"""
	try:
		if not doesFolderExist(folder):
			os.makedirs(folder)
		return doesFolderExist(folder)
	except IOError:
		return False

def doesFileExist(file):
	"""Checks to see if the xml file exists
		Return True or False"""
	try:
		with open(file):pass
		return True
	except IOError:
		return False

def createXMLFile(file):
	"""Create a getxml XML File at location X. return True/False"""
	#the xml string is concatenated merely for easy human reading/updating
	xml = ''
	xml += '<?xml version="1.0"?>\r\n' 
	xml += ' <data>\r\n'
	xml += '     <settings name="sshcheck">\r\n'
	xml += '         <program>' + program + '</program>\r\n'
	xml += '         <service>' + service + '</service>\r\n'
	xml += '         <servicelevel>' + localOrGlobal + '</servicelevel>\r\n'
	xml += '     </settings>\r\n'
	xml += ' </data>\r\n'
	try:
		f = open(file, 'w')
		f.write(xml)
		f.close()
		return doesFileExist(file)
	except Exception:
		return False

def loadConfig(file):
	"""load the values from the config file"""
	try:
		root = ET.parse(file).getroot()
		s=getService(root)
		p=getProgram(root)
		lg=getServiceLevel(root)
	except ET.ParseError, v:
		row, column = v.position
		print "XML Error: error on row", row, "column", column, ":", v 
		raise
	if p !=None:
		global program
		program = p
	if s !=None:
		global service
		service = s
	if lg !=None:
		global localOrGlobal
		localOrGlobal = lg

def updateProgram(programName, file):
	"""Update/change stored program name to x"""
	try:
		loadConfig(file)
		global program 
		program = programName
		return createXMLFile(file)
	except Exception:
		return False

def updateService(server, file):
	"""update the service name to x"""
	try:
		loadConfig(file)
		global service 
		service = server
		return createXMLFile(file)
	except Exception:
		return False

def updateServiceLevel(proximity, file):
	"""update the service-level. True for global and False for local user"""
	try:
		loadConfig(file)
		global localOrGlobal
		if proximity is True:
			localOrGlobal = "globally"
		else:
			localOrGlobal = "locally"
		return createXMLFile(file)
	except Exception:
		return False

def sendToClipboard(msg="None"):
	"""Copy message to the clipboard"""
	try:
		p = subprocess.Popen(["pbcopy"],stdin=subprocess.PIPE)
		p.stdin.write(msg)
		return True
	except Exception:
		return False


if __name__ == "__main__":
	try:
		folder = "".join(['/Users/', getpass.getuser(), '/.ssh-check/'])
		file   = "".join([folder, 'config.xml'])

		parser = argparse.ArgumentParser(
			prog='iconfigSSHC.py',
			description="""Manage SSH-Check\'s config file or generate one when needed. 
			XML management is a pain in Applescript, so this is python script is meant 
			to create serenity from chaos. The goal is to call a xml script with option 
			X and capture Y result from STDIN""",
		) 
		parser.add_argument('-s','--service', help='Find the service name', action='store_true')
		parser.add_argument('-sl','--service-level', help='Get service level. Search locally or globally?', action='store_true')
		group = parser.add_mutually_exclusive_group()
		group.add_argument('-rl','--run_local', help='The service should be run by the local user only', action='store_true', default=False)
		group.add_argument('-rg','--run_global', help='The service should be run by any user', action='store_true', default=False)
		parser.add_argument('-p','--program', help='Find program name', action='store_true')
		parser.add_argument('-c','--create', help='Create the xml file here: ~/.ssh-check/config.xml', action='store_true')
		parser.add_argument('-x','--copy-to-clipboard', help='Copy the Service name to the system clipboard', action='store_true')
		parser.add_argument('-up','--update-program', help='Update the program name')
		parser.add_argument('-us','--update-service', help='Update the service name')
		parser.add_argument('-hms','--hour-minute-second', help='Convert seconds into h:m:s')
		parser.add_argument('-vc','--version-compare', help=
			"""Compare this program version to another version number, to see which is newer. 
			Provide version number in this formate: "xxx.xxx.xxx" where xxx is a number. 
			Results are in the -1 if the current program is older, 0 when they are equal, and 1 when the current program is newer.""")
		parser.add_argument('-v','--version', action='version', version=ver)
	 
		if len(sys.argv)==1:
			parser.print_help()
			sys.exit(1)
		_args = parser.parse_args() 
		
		if (not doesFolderExist(folder) and not makeFolder(folder)) or (not doesFileExist(file) and not createXMLFile(file)):
			print None
			sys.exit(2)
	except IOError as err:
		print None
		sys.exit(2)
 
	try:
		if _args.hour_minute_second !=None:
			print getTimeHMS(_args.hour_minute_second)
		if _args.update_service != None:
			print updateService(_args.update_service, file)
		if _args.update_program != None:
			print updateProgram(_args.update_program, file)
		if _args.create:
			print createXMLFile(file)
		if _args.service:
			print getService(ET.parse(file).getroot())
		if _args.copy_to_clipboard:
			print sendToClipboard(getService(ET.parse(file).getroot()))
		if _args.program:
			print getProgram(ET.parse(file).getroot())
		if _args.run_local:
			print updateServiceLevel(False, file)
		if _args.run_global:
			print updateServiceLevel(True, file)
		if _args.service_level:   
			print getServiceLevel(ET.parse(file).getroot())
		if _args.version_compare !=None:
			print versionCompare(ver, _args.version_compare)
	
	except ET.ParseError, v:
		row, column = v.position
		print "XML Error: error on row", row, "column", column, ":", v 
		print "Rebuilding config.xml & the result is this: ", createXMLFile(file) 
		
