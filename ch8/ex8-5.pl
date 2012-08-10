#!/usr/bin/perl -w

use strict;

while (<>) {
    chomp;

    if (/\b(?<word>\w*a)\b(?<after>.{0,5})/) {
	    print "Matched: |$`<$&>$'|\n";
        print "\$+{word} contain: '$+{word}'\n";
        print "\$+{after} contain: '$+{after}'\n";
    } else {
	    print "No match.\n";
    }
}
