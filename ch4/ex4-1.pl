#!/usr/bin/env perl

use strict;
use warnings;

sub total {
    my $sum = 0;
    foreach (@_) {
        $sum += $_;
    }
    $sum;
}

my @fred = qw{ 1 3 5 7 9 };
my $fred_total = &total(@fred);
print "The total of \@fred is $fred_total.\n";
print "Enter some numbers on separate lines: ";

chomp(my @nums = <STDIN>);

my $user_total = &total(@nums);
print "The total of those numbers is $user_total.\n";
