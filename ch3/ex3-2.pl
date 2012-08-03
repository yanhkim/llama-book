#!/usr/bin/env perl

@names = qw(fred betty barney dino wilma pebbles bamm-bamm);

chomp(@nums = <STDIN>);
foreach (map { $_ - 1 } @nums) {
    print "$names[$_]\n";
}
