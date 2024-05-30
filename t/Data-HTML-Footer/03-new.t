use strict;
use warnings;

use English;
use Error::Pure::Utils qw(clean);
use Data::HTML::Footer;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Test.
my $obj = Data::HTML::Footer->new;
isa_ok($obj, 'Data::HTML::Footer');

# Test.
$obj = Data::HTML::Footer->new(
	'author' => 'Michal',
	'author_url' => 'https://skim.cz',
	'copyright_years' => '2022-2024',
	'height' => '10px',
	'version' => 0.07,
	'version_url' => '/changes',
);
isa_ok($obj, 'Data::HTML::Footer');
