#!/usr/bin/env perl
#===============================================================================
#
#         FILE: wrox-ammp.pl
#
#        USAGE: ./wrox-ammp.pl  
#
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: william song (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 09/11/2018 06:34:10 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use Data::Dumper;

my $testref = [
	{
		'22' => ['John Smith', 33, 'Cincinati'],
		'27' => ['Laxmi Narayan', 24, 'Cochin'],
		'34' => ['Lars Jensen', 42, 'Stockholm']
	},
	{
		'CA' => {
			'San Diego' => [32.4, 117.1, 'Coronado Bay Bridge'],
			'Los Angeles' => [33.4, 118.1, 'Vincent Thomas Bridge'],
			'San Francisco' => [37.4, 122.2, 'Golden Gate Bridge']
		},
		'NH' => {
				'Concord' => [43.3, 71.2, 'I93'],
				'Manchester' => [42.5, 71.8, 'Queen Street Bridge'],
				'Cornish' => [43.3, 72.2, 'Cornish Windsor Covered Bridge']
		},
	},
	{
		'scalar_key' => "I'm a string! "
	},
];

my $testref_a = {
		'22' => ['John Smith', 33, 'Cincinati'],
		'27' => ['Laxmi Narayan', 24, 'Cochin'],
		'34' => ['Lars Jensen', 42, 'Stockholm']
	};

#&ref_iterate($testref_a,1,0);
&ref_iterate($testref,1,0);
#print Dumper($testref);

=begin  BlockComment  # BlockCommentNo_1

{ 	local $Data::Dumper::Purity = 1;
	eval Data::Dumper->Dump($testref); }

=end    BlockComment  # BlockCommentNo_1

=cut


sub ref_iterate {
my ($ref1,$top_flag,$tabcount) = @_;
my $tabchar = ' ' x 5;

if(ref($ref1) eq 'HASH') {
	$tabcount++ unless $top_flag;
	for (keys %$ref1) {
#		print $tabchar x $tabcount . "$_ => ref($ref1->{$_}) ";
		print $tabchar x $tabcount . "$_ => ";
		print "\n" unless $top_flag;
		if (ref($ref1->{$_})) {
#			print $tabchar x $tabcount . ".> \n";
			&ref_iterate($ref1->{$_}, 0, $tabcount);
		}
		else { 
			&ref_iterate($ref1->{$_}, 1, $tabcount);}
	}
}
elsif (ref($ref1) eq 'ARRAY') {
	$tabcount++ unless $top_flag;
	print $tabchar x $tabcount;
	print "[ " unless $top_flag;
	for my $i (0 .. $#{$ref1}) {
#		print ref($ref1->[$i]);
		&ref_iterate($ref1->[$i], 0, $tabcount);
		print ',' unless ($i == $#{$ref1} or $top_flag);
		if ($top_flag) {
			if ($i != $#{$ref1}) {
				print "---\n";}
			else { 
				print "\n";}
		}
	}
	print "],\n" unless $top_flag;
}
else {
	print "\"$ref1\"";
}
return;
}

