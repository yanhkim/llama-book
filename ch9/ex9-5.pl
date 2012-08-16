#!/usr/bin/perl -w

use strict;

sub has_copyright {
    open IN, '<', $_[0] or die;
    while (<IN>) {
        if (/^## Copyright \(C\)/) {
            return 1;
        }
    }
}

my @no_copyrights;

foreach (@ARGV) {
    my $filename = $_;
    unless (&has_copyright($filename)) {
        push @no_copyrights, $filename;
    }
}

@ARGV = @no_copyrights;

$^I = '.bak';

while (<>) {
    print;
    if (/^#!/) {
        print "## Copyright (C) 2012 by Yours Truly\n";
    }
}
