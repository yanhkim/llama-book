#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;

sub longest_env_key {
    my $m = 0;
    foreach (keys %ENV) {
        if (length $_ > $m) {
            $m = length $_;
        }
    }
    $m;
}

my $max = &longest_env_key;

foreach (sort keys %ENV) {
    printf "%". $max . "s => %s\n", $_, $ENV{$_};
}
