#!/usr/bin/perl

<>;
print "对小数取余截取整数:";
$a = 25.6 % 7.6;
print "$a\n";
<>;
print "指数为小数的幂运算：";
$b = (25)**1.5;
print "$b\n";

<>;
print "字符串自增，只在自己的序列增，进位导致长度增加:";
$a = 'Z';
$a++;
print "$a\n";

<>;
print "||和or的优先级不同:\n";
$a = 1;
$b = 1;
$c = ($a += 0 || $b);
print "$c\n";

$a = 1;
$b = 1;
$c = ($a += 0 or $b);
print "$c\n";

<>;
print "=运算符的结合性：";
$a = 2, $b = 1;
$a *= $b += 5;
print "$a\n";

$a = 2, $b = 1;
($a *= $b) += 5;
print "$a\n";

