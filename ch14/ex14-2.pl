#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;

my %last_name = qw{ 
	fred flintstone Wilma Flintstone Barney Rubble
	betty rubble Bamm-Bamm Rubble PEBBLES FLINTSTONE
};

sub by_name {
    "\L$last_name{$a}" cmp "\L$last_name{$b}"
        or
    "\L$a" cmp "\L$b"
}

for (sort by_name keys %last_name) {
    print "$_ $last_name{$_}\n";
}
