#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;

while (<>) {
    if (/[A-Z][a-z]+/) {
        print;
    }
}
