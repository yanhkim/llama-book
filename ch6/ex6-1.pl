#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;

my %last_name = qw(fred flintstone barney rubble wilma fintstone);

chomp(my $name = <>);
$name = $last_name{$name};

say $name ? $name : "unknwon";
