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

my @items = qw( wilma dino pebbles );
my $format = "The items are:\n" . ("%20s\n" x @items);
printf $format, "@items";
printf $format, @items;

# perl ex5-try.pl 1>imfine 2>imbad
print {*STDERR} @items;

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

=begin  BlockComment  # BlockCommentNo_3

printf "%12.3f\n", 6*7 + 2/3;
my @items = qw( wilma dino pebbles);
my $format = "The item are:\n".("%10s\n" x @items)."flu" x @items;
print "the format is >>$format<<\n";
printf  $format,@items;

=end    BlockComment  # BlockCommentNo_3

=cut


