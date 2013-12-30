#!/usr/bin/perl

%h = (a=>1, b=>3);
print "%h\n";
print %h;

$a = %h;
print "\n$a\n";

$aoh = [{'k11'=>'v11', 'k12'=>'v12'}, {'k21'=>'v21', 'k22'=>'v22'}];
$hash = $aoh->[0];
print "@{[%$hash]}\n";

$hoh = {k1=>{key1=>'value1', key2=>'value2'},
        k2=>{key1=>'val1',   key2=>'val2'}
};

print "$hoh->{k1}{key1}\n";
