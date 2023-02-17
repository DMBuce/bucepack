#!/bin/bash

echo 'Checking for uncommented /say and /tellraw commands...' >&2
if grep -r -e{say,tellraw} buce-data/ data/ \
	| grep -vFxf debug.exclude \
	| grep -v -e':#' -edebug{,.function}.mcfunction:
then
	exit 1
fi

