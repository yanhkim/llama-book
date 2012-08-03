#!/usr/bin/env perl

use strict;
use warnings;
use 5.010;

sub greet {
    state @visitors;
    my $man = $_[0];

    print "Hi $man! ";
    if (@visitors) {
        print "I've seen: @visitors\n"
    } else {
        print "You are the first one here!\n";
    }
    push @visitors, $man;
}

greet("Fred");
greet("Barney");
greet("Wilma");
greet("Betty");
greet("Zooey");
