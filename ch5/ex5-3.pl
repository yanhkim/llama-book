#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;

chomp(my @lines = <STDIN>);
my $width = shift @lines;

my $ruler = '1234567890' x ($width / 10 + 1);
say $ruler;

foreach (@lines) {
    printf "%$width"."s\n", $_;
}
