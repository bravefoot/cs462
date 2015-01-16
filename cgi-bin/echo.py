#!/usr/bin/python
import os
import sys
import cgi
import cgitb
cgitb.enable()

print "Content-type: text/html"
print ""
print "<h1>Hello</h1>"
print "<h2>Headers</h2>"
print "HOST: " + os.environ["HTTP_HOST"]
print "<br>"
print "ACCEPT: "+os.environ.get("HTTP_ACCEPT","")
print "<br>"
print "ACCEPT_ENCODING: " + os.environ.get("HTTP_ACCEPT_ENCODING","")
print "<br>"
print "ACCEPT_LANGUAGE: " + os.environ.get("HTTP_ACCEPT_LANGUAGE","")
print "<br>"
print "CACHE_CONTROL: " + os.environ.get("HTTP_CACHE_CONTROL","")
print "<br>"
print "CONNECTION: " + os.environ.get("HTTP_CONNECTION","")
print "<br>"
print "USER_AGENT: " + os.environ.get("HTTP_USER_AGENT","")

print "<h2>Query String</h2>"
print os.environ.get("QUERY_STRING","")

print "<h2>Request Body</h2>"
print sys.stdin.read()
