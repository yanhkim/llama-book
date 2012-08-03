#!/usr/bin/env perl

use strict;
use warnings;

sub total {
    my $sum = 0;
    foreach (@_) {
        $sum += $_;
    }
    $sum;
}

sub avg {
    &total(@_) / @_;
}

sub above_average {
    my $avg = &avg(@_);
    my @greaters;
    foreach (@_) {
        if ($_ > $avg) {
            push @greaters, $_;
        }
    }
    @greaters;
}

my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";
