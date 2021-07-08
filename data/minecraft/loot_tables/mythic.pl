#!/usr/bin/perl

use File::Basename;

print dirname($0)."/subtables/mythic.json.yaml\n";
open(FH, '<', dirname($0)."/subtables/mythic.json.yaml") or die $!;
while (<FH>) {
	if (!m/^#/ && m/Name:..........................([^\\]*)/) {
		print $1;
		if (m/Lore:.......([^\\]*)/) {
			 print ": ", $1, "\n"
		} else {
			print "\n"
		}
	}
}

