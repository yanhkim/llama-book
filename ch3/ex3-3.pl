#!/usr/bin/env perl

chomp(@names = <STDIN>);
@names = sort @names;

print "@names\n";
