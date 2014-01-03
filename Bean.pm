package Bean;

#
# Put "require" statements in for all required, imported packages
#

require Exporter;
@ISA = qw(EXporter);
@EXPORT = qw(setBeanType);

#
# Just add code here
#

sub new {
	my $type = shift;
	my $this = {};
	this->{'Bean'} = 'Colombian';
	bless $this, $type;
	return $this;
}

#sub new{
#	my $this = {};
#	bless $this;
#	return $this;
#}

sub setBeanType{
	my ($calss, $name) = @_;
	$class->{'Bean'} = $name;
	print "Set Bean to $name\n";
}

sub nameLister {
	my $this = shift;
	my ($keys, $value);
	while (($key, $value) = each (%$this)){
		print "\t$key is $value.\n";
	}
}

sub printType {
	my $class = shift @_;
	print "The type of Bean is $class->{'Bean'}\n";
}
1;
