#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;

for (<.* *>) {
    printf "%s -> %s\n", $_, readlink
        if -l;
}
