#!/usr/bin/env perl

chomp(@lines = <STDIN>);

foreach $line (reverse @lines) {
    print "$line\n";
}
