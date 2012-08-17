#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;

sub permissions {
    my $fn = shift;
    my @perms;

    push @perms, "read" if -r $fn;
    push @perms, "write" if -w  _;
    push @perms, "execute" if -x _;

    @perms;
}

for my $file (@ARGV) {
    my @perms = &permissions($file);
    if (@perms) {
        print "You can ", join(", ", @perms), " on file [$file]\n";
        next;
    }

    print "You can't do anything on file [$file]\n";
}

