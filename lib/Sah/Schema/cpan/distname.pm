package Sah::Schema::cpan::distname;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ["perl::distname", {
    description => <<'_',

Like perl::distname, but with completion from distribution names on CPAN (using
lcpan).

_
    'x.completion'=>['lcpan_distname'],
    examples => [
        {value=>'', valid=>0},
        {value=>'Foo-Bar' , valid=>1, validated_value=>'Foo-Bar'},
        {value=>'Foo::Bar', valid=>1, validated_value=>'Foo-Bar'},
    ],
}, {}];

1;

# ABSTRACT:

=head1 SEE ALSO

L<Regexp::Pattern::CPAN>
