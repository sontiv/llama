#!/usr/bin/perl -w
use 5.014;
use utf8;

#my	@ARGV = qw# larry moe curly #;          # oh, my  
@ARGV = qw#larry moe curly#;
unshift @ARGV ,'aka';                      
while ( <> ) {
	chomp;
	print "It was $_ that I saw!  \n";
}



=begin  BlockComment  # BlockCommentNo_1

my	@array = <STDIN>;
print "@array\n";
print @array;

=end    BlockComment  # BlockCommentNo_1

=cut

=begin  BlockComment  # BlockCommentNo_2


print (2+3)*5; print "\n";
print ((2+3)*5);

=end    BlockComment  # BlockCommentNo_2

=cut

