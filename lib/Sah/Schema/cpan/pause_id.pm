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

    description => <<'MARKDOWN',

This schema can be used to validate a PAUSE ID. It's basically just `str` with
checks for valid characters and accepted length (2-9 characters). Whether the
PAUSE ID exists is not checked by this schema; see the `cpan::pause_id::exists`
and `cpan::pause_id::not_exists` for that purpose.

MARKDOWN
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
