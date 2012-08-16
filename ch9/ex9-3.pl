#!/usr/bin/perl -w

use strict;

sub trans {
    my $in = shift @_;
    open IN, '<', $in or die;
    open OUT, '>', $in . '.out' or die;

    while (<IN>) {
        chomp;
        s/fred/\n/ig;
        s/wilma/Fred/ig;
        s/\n/Wilma/g;
        print OUT "$_\n";
    }

    close IN;
    close OUT;
}

foreach (@ARGV) {
    &trans($_);
}
