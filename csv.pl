#!/usr/bin/env perl
#Version 0.1 
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
    my @new = ();
    my @split = split($delim, $line);
    for (my $i;$i<scalar(@split);$i++) { 
      if ( index(@split[$i], ",")>=0 ) { push(@new, "\"".@split[$i]."\""); }
      else { push(@new, @split[$i]) }
    }
    printf join(",", @new) . "\n"; 
  }
}
