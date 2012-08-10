#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;

while (<>) {
    if (/(\w)\1/) {
        print;
    }
}
