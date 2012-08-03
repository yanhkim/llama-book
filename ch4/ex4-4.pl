#!/usr/bin/env perl

use strict;
use warnings;
use 5.010;

sub greet {
    state $lastman;
    my $man = $_[0];

    print "Hi $man! ";
    if ($lastman) {
        print "$lastman is also here!\n"
    } else {
        print "You are the first one here!\n";
    }
    $lastman = $man;
}

greet("Fred");
greet("Barney");
greet("Zooey");
