package Sah::Schema::cpan::modname;

# AUTHORITY
# DATE
# DIST
# VERSION

use strict;

our $schema = ["perl::modname", {
    description => <<'_',

Like perl::modname, but with completion from module names on CPAN (using lcpan).

_
    'x.completion'=>['lcpan_modname'],
    examples => [
        {value=>'', valid=>0},
        {value=>'Foo::Bar', valid=>1, validated_value=>'Foo::Bar'},
        {value=>'Foo-Bar' , valid=>1, validated_value=>'Foo::Bar'},
    ],
}, {}];

1;

# ABSTRACT:

=head1 SEE ALSO

L<Regexp::Pattern::CPAN>
