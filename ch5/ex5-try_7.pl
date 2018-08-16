#!/usr/bin/perl -w
#use 5.014;
use utf8;

my $selected_output = "file-my_output";
my $log = "LOG";
my $fopen_success = open LOG, ">", "$selected_output";

if ( $fopen_success ) {
	print {*LOG} "$selected_output";
	print LOG "\nim ok";
	print $log "\nu define me";

	#$_="ooh";
	my @pabber = qw / one forest clock /;
	foreach (@pabber) {
		print {$log} "\n";
		print LOG;
	 }

	select($log);
	print "\nooh";

	close LOG;
}

my $i = open e_LOG, "< none";
select STDOUT;
print defined($i)."\n";
foreach (<e_LOG>) {
}
close e_LOG;
