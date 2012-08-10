#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;

while (<>) {
    if (/(wilma.*fred)|(fred.*wilma)/) {
        print;
    }
}
