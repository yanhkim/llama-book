#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;

while (@ARGV) {
    my $arg = shift @ARGV;
    open FILE, '<', $arg;
    print reverse(<FILE>);
    close FILE;
}
