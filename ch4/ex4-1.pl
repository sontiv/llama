#!/usr/bin/perl -w

use 5.014;
use utf8;

my @fred = qw{ 1 3 5 7 9 };
my $fred_total = &total(@fred);
print "The total of \@fred is $fred_total.\n";
print "Enter some numbers on separate lines: \n";
my	$user_total = &total(<STDIN>);
print "The total of those numbers is $user_total.\n";
#print 0x1377_0B77 + hex(0xF0) + 0x1001 . "\n";                       # F0 can't pass...
print "The total of range 1 to 1000 is ".&total(1..1000).". \n";

sub total {
	my @uExp = @_; 
	my $outer_total;
	foreach my $num ( @uExp ) {
		chomp $num;
		$outer_total += $num;
	}
	return $outer_total;
} ## --- end sub total
