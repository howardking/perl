#!/usr/bin/perl

print "1.引用变量销毁，仍可引用\n";
{
	my $ra;
	{
		my $a = "Hello world";
		$ra = \$a;
	}
	print "ref = $$ra  a = $a\n";
}

print "ref = $$ra\n";

print "2.作用域外的局部变量\n";
sub generate_greet {
	my($greeting) = "hello world\n";
 	return sub {print $greeting};
}
$rs = generate_greet();
&$rs();

sub generate_greeting {
	my($greeting) = @_;
        return sub {
		my($subject) = @_;
		print "$greeting $subject \n";
	};
}
$rs1 = generate_greeting("hello");
&$rs1("world");
#&$rs1("");

sub even_number_printer_gen{
	my($input) = @_;
	if ($input % 2) { $input ++ };
	$rs = sub{
		print "$input ";
 		$input += 2;
	};
	return $rs;
}

$iterator = even_number_printer_gen(30);
for ($i=0; $i<10; $i++){
	&$iterator();
}
print "\n";
