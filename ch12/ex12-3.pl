#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;

for (@ARGV) {
    say if -o -r -w;
}
