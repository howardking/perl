#!/usr/bin/perl

while (1){
	&readline;
	last if ($line eq "q\n");
	sub readline {
		$line = <STDIN>;
	}
}
print "done\n";

<>;
print "2.用别名传递\n";
$foo = 26;
@foo = ("here's", "a", "list");
&testsub(*foo);
sub testsub{
	local (*printarray) = @_;
   	$printarray = 61;
}
print "$foo\n";

<>;
print "3. 局部变量my\n";
my($xx, $yy) = (1,1);
if ($xx>0)
{
	my $var = "this is xx\' s";
	if ($yy>0){
		my $var = "this is yy\' s";
		print "$var\n";
	}
	print "$var\n";
}

{
	local $a = 1;
	a();
}
sub a{
	print "\$a = $a";
}

<>;
print "4. 递归\n";
sub f{
	my $a = shift;
	$a == 1?1:$a*f($a-1);
}
print f(4);
print "\n";
