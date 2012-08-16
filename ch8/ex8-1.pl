#!/usr/bin/perl -w

use strict;

while (<>) {
    chomp;

    if (/match/) {
	    print "Matched: |$`<$&>$'|\n";
    } else {
	    print "No match.\n";
    }
}
