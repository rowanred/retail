COMMAND ./retail
STDERR Need file pattern!
EXIT 255

COMMAND ./retail -h
STDOUT ^Usage: retail
EXIT 0

COMMAND perl -wc retail
STDERR retail syntax OK
EXIT 0

COMMAND mkdir tmp
EXIT 0

COMMAND ./retail -h > tmp/log
EXIT 0

COMMAND ./retail -s tmp/retailtest -f tmp/log
STDOUT ^Usage
EXIT 0

COMMAND ./retail -s tmp/retailtest -f tmp/log
STDOUT ^$
EXIT 0

COMMAND test -f tmp/retailtest.db -o -f tmp/retailtest.pag
EXIT 0

COMMAND rm -rf tmp
EXIT 0
