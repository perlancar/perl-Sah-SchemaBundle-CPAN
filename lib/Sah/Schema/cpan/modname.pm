package Sah::Schema::cpan::modname;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ["perl::modname", {
    summary => "A module name on CPAN, e.g. 'Module::Installed::Tiny'",
    description => <<'MARKDOWN',

This schema can be used to validate a CPAN module name. It's like the
`perl::modname` schema, but with completion from module names on CPAN (using
<prog:lcpan>). It does not check whether a CPAN module exists or not (indexed on
PAUSE); use the `cpan::modname::exists` or `cpan::modname::not_exists` schemas
for that purpose.

MARKDOWN
    'x.completion'=>['lcpan_modname'],
    examples => [
        {value=>'', valid=>0},
        {value=>'Foo::Bar', valid=>1, validated_value=>'Foo::Bar'},
        {value=>'Foo-Bar' , valid=>1, validated_value=>'Foo::Bar'},
    ],
}];

1;

# ABSTRACT:

=head1 SEE ALSO

L<Regexp::Pattern::CPAN>
