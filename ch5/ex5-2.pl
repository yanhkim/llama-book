#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;

chomp(my @lines = <STDIN>);

my $ruler = '1234567890' x 6;
say $ruler;

foreach (@lines) {
    printf "%20s\n", $_;
}
