#!/usr/bin/python
__author__ = 'Jason Campisi'
# Program: compareVersions.py 
#note: this throws an error if not run from within the current directory. Quark in os.getcdw()
ver = "0.1.1"
import os, sys, getpass, subprocess

"""Compare iconfigSSHC.py program version to another copy, to see which is newer. 
      Provide version number in this format: "xxx.xxx.xxx" where xxx is a number. 
      Results are in the -1 if the current program is older, 0 when they are equal, 
      and 1 when the current program is newer."""

if __name__ == "__main__":
    try:
      cmd = "".join(['/Users/', getpass.getuser(), '/.ssh-check/iconfigSSHC.py'])
      p = subprocess.Popen([cmd, '-v'], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
      out, err = p.communicate()
      #print err.strip(), "<--", cmd
      ver1=err.strip()

      cmd2 = "".join([os.getcwd(),'/iconfigSSHC.py'])
      p = subprocess.Popen([cmd2, "-vc", ver1], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
      out, err = p.communicate()
      print out.strip()
    except:
      print "Error"

