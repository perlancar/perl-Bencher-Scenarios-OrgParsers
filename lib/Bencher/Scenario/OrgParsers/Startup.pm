package Bencher::Scenario::OrgParsers::Startup;

# AUTHORITY
# DATE
# DIST
# VERSION

our $scenario = {
    summary => 'Benchmark startup overhead',
    module_startup => 1,
    participants => [
        {module=>'Org::Parser'},
        {module=>'Org::Parser::Tiny'},
    ],
};

1;
# ABSTRACT:
