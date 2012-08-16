#!/usr/bin/perl -w

use strict;

sub trans {
    my $in = shift @_;
    open IN, '<', $in or die;
    open OUT, '>', $in . '.out' or die;

    while (<IN>) {
        s/fred/Larry/ig;
        print OUT $_;
    }

    close IN;
    close OUT;
}

foreach (@ARGV) {
    &trans($_);
}
