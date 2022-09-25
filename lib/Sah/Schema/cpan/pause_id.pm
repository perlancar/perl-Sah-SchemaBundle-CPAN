package Sah::Schema::cpan::pause_id;

use strict;

use Regexp::Pattern::CPAN;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ["str", {
    summary => "PAUSE author ID, e.g. 'PERLANCAR'",
    match => qr/\A$Regexp::Pattern::CPAN::RE{pause_id}{pat}\z/,
    'x.perl.coerce_rules'=>['From_str::to_upper'],
    'x.completion'=>['lcpan_authorid'],

    description => <<'_',

Note that whether the PAUSE ID exists is not checked by this schema.

_
    examples => [
        {value=>'', valid=>0},
        {value=>'perlancar', valid=>1, validated_value=>'PERLANCAR'},
        {value=>'perlancar2', valid=>0, summary=>'Too long'},
    ],
}];

1;

# ABSTRACT:

=head1 SEE ALSO

L<Regexp::Pattern::CPAN>
