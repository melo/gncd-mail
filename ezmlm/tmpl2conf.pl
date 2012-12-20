#!/usr/bin/env perl
#
# Transforms conf-*.tmpl into final files
#

use strict;
use warnings;

my $orig_cfg = my $cfg = <>;
$cfg =~ s/<!\s*(.+?)\s*!>/exec_cmd($1)/ge;

print "$cfg\n## original was: $orig_cfg\n";

## Pass all other input unchanged
$/ = undef;
print scalar(<>);


sub exec_cmd {
  my $output = `$_[0]`;
  if (! defined $output) {
    print STDERR "!!!! FAILED substitution of '$_[0]'\n";
    return '';
  }

  chomp($output);
  return $output;
}
