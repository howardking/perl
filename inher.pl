#!/usr/bin/perl

push (@INC, 'pwd');
use Coffee;

$cup = new Coffee;
print "\n--------------------------Initial values--------------------\n";
print "Coffee: $cup->{'Coffee'}\n";
print "Bean: $cup->{'Bean'}\n";

print "\n--------------------------Change Bean Type-------------------\n";
$cup->setBeanType('Mixed');
print "Bean Type is now $cup->{'Bean'}\n";

print "\n--------------------------Change Coffee Type------------------\n";
$cup->setCoffeeType('Instant');
print "Type of Coffee: $cup->{'Coffee'}\n";

$cup->nameLister;
$cup->Coffee::printType();
$cup->printType();
$cup->Bean::printType();
