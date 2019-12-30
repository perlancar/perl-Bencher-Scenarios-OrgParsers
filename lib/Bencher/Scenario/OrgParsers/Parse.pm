package Bencher::Scenario::OrgParsers::Parse;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;

use File::ShareDir::Tarball qw(dist_dir);

my $dist_dir = dist_dir("Org-Examples");

our $scenario = {
    summary => 'Benchmark parsing',
    participants => [
        {module=>'Org::Parser'      , code_template=>'Org::Parser      ->new->parse_file(<path>)'},
        {module=>'Org::Parser::Tiny', code_template=>'Org::Parser::Tiny->new->parse_file(<path>)'},
    ],
    datasets => [
        {name=>'various.org'      , args=>{path=>"$dist_dir/examples/various.org"}},
        {name=>'1000headlines.org', args=>{path=>"$dist_dir/examples/1000headlines.org"}},
    ],
};

1;
# ABSTRACT:

=head1 SEE ALSO
