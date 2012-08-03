#!/usr/bin/env perl

chomp($r = <STDIN>);
$r = 0 if $r < 0;
$pi = 3.141592654;

print 2 * $pi * $r, "\n";
