import pytest
import httplib
import commands
import os

def test_saltisrunning():
  x = os.path.isdir("/tmp/salt")
  assert x == True

def test_saltminion_running():
  x = commands.getoutput("ps -ef | grep -w salt-minion | grep -v 'grep'")
  if 'salt' in x:
    y = True
  else:
    y = False
    assert y == True

def test_salthttp_url():
  conn = httplib.HTTPConnection("localhost:8000")
  conn.request("HEAD", "/")
  status = conn.getresponse().status
  if status == 404:
    x = False
  else:
    x = True
    assert x == True

