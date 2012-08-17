#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;

chomp (my $dir = <STDIN>);

if ($dir) {
    chdir $dir or die "$! - $dir\n";
} else {
    chdir;
}

print join("  ", sort(<* .*>)), "\n";
