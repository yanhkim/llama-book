#!/usr/bin/perl -w

use strict;
use 5.010;

my $debug = $ENV{DEBUG} // 1;

my $pwd = int(1 + rand 100);

print "password is $pwd\n" if $debug;

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
