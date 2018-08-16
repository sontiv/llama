use strict;
use warnings;
use re 'debug';

sub test {
	    my $str = "123456789";
	        print join(":", split /(?<=...)/, $str);
}

test();
