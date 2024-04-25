#!/bin/bash

# redirect all output to stderr
exec 1>&2

packfiles="$(echo ${PACKFILES-$(make list)})"
retval=0

echo 'Checking that all documented packs exist...' >&2
for pack in $(sed -n '/packsummary/ {
	/^\/\//d
	s/.*packsummary //
	s/}.*//
	p
}' README.asciidoc.sempl); do
	if [[ ! $packfiles =~ (^| )$pack.zip( |$) ]]; then
		echo "> Nonexistent pack is documented: $pack"
		retval=1
	fi
done

echo 'Checking that all packs are documented...' >&2
for file in $packfiles; do
	if ! grep -q "\b${i%.zip}\b" README.asciidoc.sempl; then
		echo "> Missing documentation for pack: $pack"
		retval=1
	fi
done

exit $retval

