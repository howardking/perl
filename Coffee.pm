#
# The Coffee.pm file to illustrate interitance.
#
package Coffee;
require Exporter;
require Bean;
@ISA = qw(Exporter, Bean);
@EXPORT = qw(setImports, declareMain, closeMian);

#
# set item
#
sub setCoffeeType{
	my ($class, $name) = @_;
	$class->{'Coffee'} = $name;
	print "Set coffee type to $name \n";
}

sub printType{
	my $class = shift @_;
	print "The type of Coffee is $class->{'Coffee'}\n";
}
#
# constructor
#
sub new {
	my $type = shift;
	my $this = Bean->new();
	$this->{'Coffee'} = 'Instant';
	bless $this, $type;
	return $this;
}
1;
