#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;

sub mtimeof {
    -M shift;
}

die "usage: $0 FILE...\n" unless @ARGV;

my $file = shift @ARGV;
my $mtime = &mtimeof($file);

for my $f (@ARGV) {
    my $c = &mtimeof($file);
    ($mtime, $file) = ($c, $f) if $c > $mtime
}

printf "the oldest file is %s. it is %.1f days old.\n", $file, $mtime;
