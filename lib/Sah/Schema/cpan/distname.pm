package Sah::Schema::cpan::distname;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ["perl::distname", {
    summary => 'A distribution name on CPAN, e.g. "Module-Installed-Tiny"',
    description => <<'MARKDOWN',

This schema can be used to validate a CPAN distribution name. It's like the
`perl::distname` schema, but with completion from distribution names on CPAN
(using <prog:lcpan>). It does not check whether a CPAN distribution exists or
not (indexed on PAUSE); use the `cpan::distname::exists` or
`cpan::distname::not_exists` schemas for that purpose.

MARKDOWN
    'x.completion'=>['lcpan_distname'],
    examples => [
        {value=>'', valid=>0},
        {value=>'Foo-Bar' , valid=>1, validated_value=>'Foo-Bar'},
        {value=>'Foo::Bar', valid=>1, validated_value=>'Foo-Bar'},
    ],
}];

1;

# ABSTRACT:

=head1 SEE ALSO

L<Regexp::Pattern::CPAN>
