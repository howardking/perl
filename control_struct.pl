#!/usr/bin/perl

print "\$a的值在循环后恢复：";
$a = 1;
print "$a\n";
foreach $a(2,3,4) {print $a;}
print "\n$a\n";

print "改变循环变量的值引起数组元素值改变：";
@a = (1, 2, 3);
print @a;
foreach $c(@a) {$c=4 if $c == 2;}
print @a;

print "\n可以循环访问数组的部分元素：";
@a = (1, 2, 3);
print @a;
foreach $c(@a[1,2]) {print $c;}

print "\n循环变量的缺省值是\$_:";
@a = (1, 2, 3);
foreach (@a) {print "$_";}

print "\nfor和foreach通用：";
foreach($i=1; $i<5; $i++){print $i;}

<>;
print "使用标签：";
LABEL:for ($i = 1; $i < 5; $i ++){
	for ($j = 1; $j < 5; $j ++){
		print "$j ";
		last LABEL if $i == 3;
	}
}
print "\$i = $i";

<>;
print "continue:";
$a = 0;
while ($a ++ < 10){
	($f = 1, next) if $a == 5;
	print "$a ";
}
continue{
	(print (":$a in continue:"), $f = 0) if ($f == 1);
}
