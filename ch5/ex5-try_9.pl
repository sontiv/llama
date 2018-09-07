#
#===============================================================================
#
#         FILE: ex5-try_9.pl
#
#  DESCRIPTION: 
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: william song (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 09/07/2018 11:27:18 PM
#     REVISION: ---
#===============================================================================

=begin  BlockComment  # BlockCommentNo_1

perl -e 'my $myio=\STDERR; print $$myio "\n"' 1>/dev/null
perl -e 'my $myio=\STDERR; print \$myio ("\n")' 1>/dev/null
perl -e 'my $myio=\STDERR; print $$myio + ("anything \n") ' 1>/dev/null

=end    BlockComment  # BlockCommentNo_1

=cut

