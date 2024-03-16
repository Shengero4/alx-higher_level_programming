#!/usr/bin/python3
# Use getattr to access the built-in namespace and get the 'id' function if available,
# otherwise use the 'print' function
getattr(__builtins__, '__dict__', {}).get('id', print)("#pythoniscool")
