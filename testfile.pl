#!/usr/bin/perl

open (F, "+<file1") || die $@;
$a = <F>;
print "line 1 = $a";
print tell(F);
print "\n";
print F "a".$/;
seek (F, tell(F), 0);
$a = <F>;
print "line 2 = $a";
print F "a".$/;
close (F);
print $/
print "\n";

