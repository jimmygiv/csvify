#!/usr/bin/env perl
#Import modules

#Constants
my @content = <STDIN>;
my $usage = '-d delimiter';

#Check Args
if (scalar(@ARGV) <= 1) {
  main(' ', @content);
}
elsif (scalar(@ARGV) == 2) {
  my $delim = $ARGV[1];
  main($delim, @content);
}
else {
  print("$usage");
  exit;
}

sub main {
  my ($delim, @content) = @_;
  foreach ( @content ) {
    my $line = $_;
    my @split = split($delim, $line);
    my $new = join(",", @split);
    print "$new\n"
  }
}
