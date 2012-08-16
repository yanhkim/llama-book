#!/usr/bin/perl -w

use strict;

while (<>) {
    chomp;

    if (/\b\w*a\b/) {
	    print "Matched: |$`<$&>$'|\n";
    } else {
	    print "No match.\n";
    }
}
