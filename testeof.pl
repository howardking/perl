#!/usr/bin/perl

@ARGV = ("file1", "file2");
while ($line = <>) {
	if (eof){
		print 'eof';
	}
}
print "\n"

