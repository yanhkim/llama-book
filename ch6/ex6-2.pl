#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;

my %freq;

while (<>) {
    chomp;
    $freq{$_}++;
}

foreach (sort keys %freq) {
    say "$_ $freq{$_}";
}
