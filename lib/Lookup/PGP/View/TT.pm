package Lookup::PGP::View::TT;
use Moose;
use namespace::autoclean;

extends 'Catalyst::View::TT';

__PACKAGE__->config(
    TEMPLATE_EXTENSION => '.tt',
    render_die => 1,
    INCLUDE_PATH => [
        Lookup::PGP->path_to('root', 'views'),
    ],
);

=head1 NAME

Lookup::PGP::View::TT - TT View for Lookup::PGP

=head1 DESCRIPTION

TT View for Lookup::PGP.

=head1 SEE ALSO

L<Lookup::PGP>

=head1 AUTHOR

A clever guy

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
