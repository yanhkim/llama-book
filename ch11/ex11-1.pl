#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;

use Module::CoreList;

my %modules = %{ $Module::CoreList::version{5.008} };
for (sort(keys %modules)) {
    print "$_ => ", $modules{$_} // '(undefined)', "\n";
}
