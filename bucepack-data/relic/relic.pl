#!/usr/bin/perl

use File::Basename;

#print dirname($0)."/subtables/relic.json.yaml\n";
open(FH, '<', dirname($0)."/subtables/relic.loot_table.json.yaml") or die $!;
while (<FH>) {
	if (!m/^#/ && m/Name:.*text\\\\\\":\\\\\\"([^\\]*)/) {
		print $1;
		if (m/Lore:.*§.([^\\]*)/) {
			 print ": ", $1, "\n"
		} else {
			print "\n"
		}
	}
}

open(FH, '<', dirname($0)."/subtables/darkvision_helmet.loot_table.json.yaml") or die $!;
while (<FH>) {
	if (!m/^#/ && m/Name:.*text\\\\\\":\\\\\\"([^\\]*)/) {
		print $1;
		if (m/Lore:.*§.([^\\]*)/) {
			 print ": ", $1, "\n"
		} else {
			print "\n"
		}
		exit;
	}
}

