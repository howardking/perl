#!/usr/bin/perl

$~ = "MYFORMAT";
write;
format MYFORMAT = 
======================================================
Here is the text I want to display.
======================================================
.

#open (F, "quote");
#open (F, "STDIN");
@quotation = <>;
close (F);
$quotation = join("", @quotation);
$~ = "QUOTATION";
write;

#format QUOTATION = 
#Quotation for the day:
#-------------------------------------------------------
#~ ^<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<!
#$quotation
#~ ^<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<!
#$quotation
#--------------------------------------------------------
#.

format QUOTATION = 
Quotation for the day:
---------------------------------------------------------
~~ ^<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
$quotation
---------------------------------------------------------
.
