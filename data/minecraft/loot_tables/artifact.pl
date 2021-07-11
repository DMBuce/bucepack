#!/usr/bin/perl

use File::Basename;

#print dirname($0)."/subtables/artifact.json.yaml\n";
open(FH, '<', dirname($0)."/subtables/artifact.json.yaml") or die $!;
while (<FH>) {
	if (!m/^#/ && m/Name:.*text\\\\\\":\\\\\\"([^\\]*)/) {
		print $1;
		if (m/Lore:.*§.([^\\]*)/) {
			 print ", ", $1, "\n"
		} else {
			print "\n"
		}
	}
}

open(FH, '<', dirname($0)."/subtables/darkvision_helmet.json.yaml") or die $!;
while (<FH>) {
	if (!m/^#/ && m/Name:.*text\\\\\\":\\\\\\"([^\\]*)/) {
		print $1;
		if (m/Lore:.*§.([^\\]*)/) {
			 print ", ", $1, "\n"
		} else {
			print "\n"
		}
		exit;
	}
}

