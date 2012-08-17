#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;

use File::Basename;
use File::Spec;

die "usage: $0 FILENAME LINKNAME\n"
    unless scalar(@ARGV) == 2 or scalar(@ARGV) == 3;

my $soft = 0;
my $src = shift @ARGV;

if ($src eq '-s') {
    $soft = 1;
    $src = shift @ARGV;
}

my $dest = shift @ARGV;

if (-d $dest) {
    $dest = File::Spec->catfile($dest, basename($src));
}

if ($soft) {
    symlink $src, $dest or warn "$! - $dest => $src\n";
} else {
    link $src, $dest or warn "$! - $dest => $src\n";
}
