package Lookup::PGP::Controller::Key::Search;
use Moose;
use namespace::autoclean;

use Crypt::OpenPGP::KeyServer;

BEGIN { extends 'Catalyst::Controller'; }

=head1 NAME

Lookup::PGP::Controller::Key::Search - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(1) {
    my ( $self, $c, $query ) = @_;
    my $server = Crypt::OpenPGP::KeyServer->new(
        Server => 'pgp.mit.edu'
    );
    my @kbs = $server->find_keyblock_by_uid($query);

    my @keys;
    map { push @keys, { 'pubkey' => $_->save_armoured } } @kbs;
    $c->stash( 'keys' => \@keys );

    $c->detach( 'View::JSON' );
}


=head1 AUTHOR

A clever guy

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
