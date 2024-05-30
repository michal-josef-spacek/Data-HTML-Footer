package Data::HTML::Footer;

use strict;
use warnings;

use Mo qw(build default is);
use Mo::utils::CSS 0.06 qw(check_css_unit);
use Mo::utils::URI qw(check_location);

our $VERSION = 0.01;

has author => (
	is => 'ro',
);

has author_url => (
	is => 'ro',
);

has copyright_years => (
	is => 'ro',
);

has height => (
	is => 'ro',
);

has version => (
	is => 'ro',
);

has version_url => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check author_url.
	check_location($self, 'author_url');

	# Check copyright years.
	# TODO

	# Check height.
	check_css_unit($self, 'height');

	# Check version_url.
	check_location($self, 'version_url');

	return;
}

1;

__END__
