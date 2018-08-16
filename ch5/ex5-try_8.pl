#!/usr/bin/perl -w
use 5.014;
use utf8;

if (! open LOG, ">", "log") {               #chown root:root logfile 
	die "Cannot create logfile: $!";
}
close LOG;

if ( @ARGV < 2 ) {
	warn "Not enough arguments\n";
	die "$0: Not enough arguments\n";
}

9/<STDIN> or die "anything wrong? $!";

