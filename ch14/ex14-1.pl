#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;

my @nums;
my $max_len = 0;

while (<>) {
    chomp;
    for (split ' ', $_) {
        $max_len = length $_ if $max_len < length $_;
        push @nums, $_;
    }
}

for (sort { $a <=> $b } @nums) {
    printf "%${max_len}s\n", $_;
}
