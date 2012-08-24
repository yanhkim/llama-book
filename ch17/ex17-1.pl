#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;

sub read_file {
    open FILE, "<", shift;
    my @lines = <FILE>;
    close FILE;
    @lines;
}

my @lines = &read_file($ARGV[0]);

sub run {
    my $re = shift;
    my @matched;
    for (@lines) {
        push @matched, $_ if /$re/;
    }
    (scalar @matched, @matched);
}

while (<STDIN>) {
    chomp(my $re = $_);

    last if $re eq "";

    my ($match_num, @match_lines);

    eval {
        ($match_num, @match_lines) = &run($re);
    };

    if ($@) {
        say "An error occured ($@), continuing";
        next;
    }

    say $match_num;
    print "@match_lines";
}
