#!/usr/bin/perl

$val = 999_999_999_999_999;
print "value is $val\n";

$val = 1000_0000_0000_0000;
print "value is $val\n";

$val = 9876_5432_1012_3451;
print "value is $val\n";

$val = 2.33E999;
print "value is $val\n";

$val = 2.33e-999;
print "value is $val\n";

$val = 9.01E+21 + 0.01 - 9.01E+21;
print "first value is $val\n";

$val = 9.01E+21 - 9.01E+21 + .01;
print "second value is $val\n";
