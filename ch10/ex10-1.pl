#!/usr/bin/perl -w

use strict;

my $pwd = int(1 + rand 100);

while (<>) {
    chomp;

    if ($_ eq '' || $_ eq 'exit' || $_ eq 'quit') {
        last;
    }

    if ($_ == $pwd) {
        print "match\n";
        last;
    }

    print (($_ < $pwd) ? "too small\n" : "too big\n");
}
