#!/usr/bin/perl -w

use strict;

while (<>) {
    chomp;

    if (/\b(?<word>\w*a)\b/) {
	    print "Matched: |$`<$&>$'|\n";
        print "\$+{word} contain: '$+{word}'\n";
    } else {
	    print "No match.\n";
    }
}
