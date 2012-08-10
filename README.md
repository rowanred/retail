retail
======

In the style of logtail, this prints out the last lines of a log file since
the last time it has been run.  While logtail will follow only one log file,
retail will follow all log files matching a regular expression.  It keeps
state in an NDBM tied file.  It should be fairly compatible with the logtail
family.

usage
=====

Usage: retail [-d] [-h] [-s state_dir] -f logfile_pattern

retail is a log file tailer in the spirit of logtail that keeps state in
an NDBM file and can follow all log files matching a regular expression
pattern.  For example, to follow logs created with a time stamp suffix
of the form access.YYYY-MM-DD (note the escapes for shell):

    retail -f /var/log/apache/access.\\d{4}-\\d{2}-\\d{2}

retail compares the file name of the log file (but NOT any parts of the path)
to the regular expression when selecting files to follow.

