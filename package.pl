#!/usr/bin/perl

$a = 1;
$b = 2;
foreach $key (keys %main::)
{
	print "\$$key =>     $main::($key)\n";
}

print ${$main::{'a'}};
print "\n";
package sep_test;
my $sep = ' ';

sub set_sep{
	my $prev_sep = $sep;
	if (@_) { $sep = $_[0]}
	return $prev_sep;
}

sub flip_words {
	my $line = $_[0];
	my @words = split($sep, $line);
	return join($sep, reverse @words);
}

package main;
$line = "a:b:c";
$sep_save = sep_test::set_sep(':');
print sep_test::flip_words($line);
print "\n";
