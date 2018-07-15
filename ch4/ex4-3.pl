#!/usr/bin/perl -w

use 5.014;
use utf8;

sub total {
	my @uExp = @_; 
	my $outer_total;
	foreach my $num ( @uExp ) {
		chomp $num;
		$outer_total += $num;
	}
	return $outer_total;
} ## --- end sub total

my    	@fred = &above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my	@barney = &above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";


sub average {
	my	@avrListIn	=  @_ ;
	my	$avrValue = &total(@avrListIn)/@avrListIn;
	return  $avrValue;
} ## --- end sub average


sub above_average {
	my	@avrListIn	=  @_ ;
	my	@aboveList;
	my	$avr = &average(@avrListIn);
	foreach my $item ( @avrListIn ) {
		if ( $item > $avr ) {
			push @aboveList, $item;
		}
	}
	return @aboveList;
} ## --- end sub above_average
