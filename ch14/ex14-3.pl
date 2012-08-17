#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;

chomp(my $line = <>);

while (<>) {
    chomp;
    my $sub = $_;
    my $pos = 0;
    my $find = 0;

    while (1) {
        $find = index $line, $sub, $pos + 1;
        last if ($find < 0);
        print "$find\n";
        $pos = $find;
    }
}
