package Sah::Schema::cpan::pause_id;

# AUTHORITY
# DATE
# DIST
# VERSION

use strict;
use Regexp::Pattern::CPAN;

our $schema = ["str", {
    summary => "PAUSE author ID",
    match => qr/\A$Regexp::Pattern::CPAN::RE{pause_id}{pat}\z/,
    'x.perl.coerce_rules'=>['From_str::to_upper'],
    'x.completion'=>['lcpan_authorid'],
    examples => [
        {data=>'', valid=>0},
        {data=>'perlancar', valid=>1, res=>'PERLANCAR'},
        {data=>'perlancar2', valid=>0, summary=>'Too long'},
    ],
}, {}];

1;

# ABSTRACT:

=head1 SEE ALSO

L<Regexp::Pattern::CPAN>
