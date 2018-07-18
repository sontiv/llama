#!/usr/bin/perl -w
use 5.014;
use utf8;

#my	@ARGV = qw# larry moe curly #;          # oh, my  
@ARGV = qw#larry moe curly#;
unshift @ARGV ,'ex5-1.pl';                      
while ( <> ) {
	chomp;
	print "It was $_ that I saw!  \n";
}

=begin  BlockComment  # BlockCommentNo_1

=end    BlockComment  # BlockCommentNo_1

=cut

