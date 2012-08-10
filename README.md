retail
======

In the style of logtail, this prints out the last lines of a log file since
the last time it has been run.  While logtail will follow only one log file,
retail will follow all log files matching a regular expression.  It keeps
state in an NDBM tied file.  It should be fairly compatible with the logtail
family.
