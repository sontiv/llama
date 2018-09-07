use strict;
use warnings;
use re 'debug';

sub test {
	my $str = "123456789";
	join(":", split /(?<=...)/, $str);
}

test();
