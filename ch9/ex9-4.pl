#!/usr/bin/perl -w

use strict;

$^I = '.bak';

while (<>) {
    print;
    if (/^#!/) {
        print "## Copyright (C) 2012 by Yours Truly\n";
    }
}
