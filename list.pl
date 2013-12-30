#!/usr/bin/perl

print "单元素列表：";
@a = (2);
$a = $a[0];
print $a;

print "\n列表范围：";
@a = (4.5..1.6);
print "@a\n";

print "列表元素：";
$a = (1, 2, 3)[1];
print "$a\n";

print "列表赋值：";
$a = (1, 2, 3);
print "$a\n";

print "\$#a的应用：";
@a = (1, 2, 3);
print "数组的长度为$#a+1\t";
$#a = 1;
print "数组元素减少为@a\n";

print "sort的使用：";
@a = (1, 12, 4, 8, 20);
print sort(@a);
print "\n";
print sort {$a<=>$b} (@a);

print "\nsplit示例";
$a = 'a, b, c';
@b = split(/,/,$a, 2);
print "@b\n";

print "map示例：";
print map($_+1, (1, 2));
print "\n";

print "wantarray示例：";
sub mysub(){print wantarray()? "数组\n" : "变量\n";}
@a = mysub;
$a = mysub;

print "二维数组示例：";
$aoa = [[1, 2, 3],['a', 'b', 'c']];
print "$aoa->[0][0]\n";
print "@{$aoa->[0]}[0, 1]\n";
print "@{$aoa->[0]}\n";
print "@$aoa\n";
@a = (1, 2, 3);
@b = ('a', 'b', 'c');
$aoa = [[@a], [@b]];
print "$aoa->[1][0]\n";

$a = (1,2,3);
print "@a\n"
