#!/usr/bin/python
__author__ = 'Jason Campisi'
# Program: iconfigSSHC.py 
# Version: 0.1.2
# Author: Jason Campisi
# Date: 9.29.13
# License: GPL 2 or higher
# Purpose: if $HOME/.ssh-check/ or $HOME/.ssh-check/config.xml do not exist, then create them
# Next grab & display the program and service attributes from the following xml format:
# <?xml version="1.0"?>
# <data>
#     <settings name="sshcheck">
#         <program>Firefox</program>
#         <service>tunnelr.com</service>
#     </settings>
# </data>
#
#
#

import getopt, sys, os, getpass
import xml.etree.ElementTree as ET
import argparse

program = "Firefox"
service = "tunnelr.com"

def getProgram(root):
	"""Returns program name in xml file or returns None"""
	for settings in root.findall('settings'):
		return settings.find('program').text
	return "None"

def getService(root):
	"""Returns service name in xml file or returns None"""
	for settings in root.findall('settings'):
		return settings.find('service').text
	return "None"

def doesFolderExist(folder):
	"""Does a folder exist? True/False"""
	try:
		if os.path.exists(folder):
			return True
	except Expection:
		pass
	return False

def makeFolder(folder):
	"""Create a folder at location X, return True/False"""
	try:
		if not os.path.exists(folder):
			os.makedirs(folder)
		if os.path.exists(folder):
			return True
	except IOError:
		pass
	return False

def doesFileExist(file):
	"""Checks to see if the xml file exists
		Return True or False"""
	try:
		with open(file):pass
		return True
	except IOError:
		pass
	return False

def createXMLFile(file):
	"""Create a getxml XML File at location X. return True/False"""
	try:
		f = open(file, 'w')
		f.write('<?xml version="1.0"?>\r\n')
		f.write(' <data>\r\n')
		f.write('     <settings name="sshcheck">\r\n')
		f.write('         <program>' + program + '</program>\r\n')
		f.write('         <service>' + service + '</service>\r\n')
		f.write('     </settings>\r\n')
		f.write(' </data>\r\n')
		f.close()
		return doesFileExist(file)
	except Exception:
		pass
	return False

def updateProgram(programName, file):
	try:
		global program 
		program = programName
		return createXMLFile(file)
	except Exception:
		pass
	return False

def updateService(server, file):
	try:
		global service 
		service = server
		return createXMLFile(file)
	except Exception:
		pass
	return False

def main():
  try:
	 folder = "".join(['/Users/', getpass.getuser(), '/.ssh-check/'])
	 file   = "".join(['/Users/', getpass.getuser(), '/.ssh-check/config.xml'])
	 
	 parser = argparse.ArgumentParser(
	 	prog='iconfigSSHC.py',
	 	description='Manage SSH-Check\'s config file or generate one when needed. XML management is a pain in Applescript, so this is python script is meant to create serenity from chaos. The goal is to call a xml script with option X and capture Y result from STDIN',
	 )
	 parser.add_argument('-s','--service', help='Find the service name', action='store_true')
	 parser.add_argument('-p','--program', help='Find program name', action='store_true')
	 parser.add_argument('-c','--create', help='Create the xml file here: ~/.ssh-check/config.xml', action='store_true')
	 parser.add_argument('-up','--update-program', help='Update the program name')
	 parser.add_argument('-us','--update-service', help='Update the service name')
	 if len(sys.argv)==1:
	 	parser.print_help()
	 	sys.exit(1)
	 _args = parser.parse_args() 
	 	
  	 if (not doesFolderExist(folder) and not makeFolder(folder)) or (not doesFileExist(file) and not createXMLFile(file)):
  	 		print "None"
  	 		sys.exit(2)
  except IOError as err:
		print "None"
		sys.exit(2)
  try:
    if _args.update_service != None:
  		print updateService(_args.update_service, file)
    elif _args.update_program != None:
		print updateProgram(_args.update_program, file)
    elif _args.create:
  		print createXMLFile(file)
    elif _args.service:
 		print getService(ET.parse(file).getroot())
    elif _args.program:
		print getProgram(ET.parse(file).getroot())		
    else:
		print "None"
  except ET.ParseError, v:
    print "Error: rebuilding config.xml file...", createXMLFile(file) 
    #row, column = v.position
    #print "XML Error: error on row", row, "column", column, ":", v

		
  sys.exit()

if __name__ == "__main__":
	main()
	
