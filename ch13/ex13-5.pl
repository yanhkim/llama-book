#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;

use File::Basename;
use File::Spec;

die "usage: $0 FILENAME NEW_FILENAME\n" unless scalar(@ARGV) == 2;

my ($src, $dest) = @ARGV;

if (-d $dest) {
    $dest = File::Spec->catfile($dest, basename($src));
}

rename $src, $dest or warn "$! - $src\n";
