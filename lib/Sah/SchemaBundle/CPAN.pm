## no critic: TestingAndDebugging::RequireUseStrict
package Sah::SchemaBundle::CPAN;

# during build by perl >= 5.014, Sah::SchemaR::cpan::pause_id will contain sequence (?^...) which is not supported by perl <= 5.012
use 5.014;
use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

1;
# ABSTRACT: Sah schemas related to CPAN

=head1 SYNOPSIS


=head1 prepend:SEE ALSO

L<Sah::SchemaBundle::CPANMeta>

=cut
