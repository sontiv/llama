#!/usr/bin/perl -w
use 5.014;
use utf8;


=begin  BlockComment  # BlockCommentNo_1

if (! open LOG, ">", "log") {               #chown root:root logfile 
	die "Cannot create logfile: $!";
}
close LOG;

=end    BlockComment  # BlockCommentNo_1

=cut


if ( @ARGV < 2 ) {
	warn "Not enough arguments\n";
#	die "$0: Not enough arguments\n";

#	die "$0: Not enough arguments\n";
#	As a rule of thumb, put the newline on messages that indicate a usage error and leave it off when the error might be something you want to track down during debugging.[*]
#	perldoc -v '$0'
#	die "$0: not enough arguments";
}

#9/<STDIN> or die "anything wrong? $!";
say;
eval{
    return 2 / <STDIN>;};
print $@ if $@;
