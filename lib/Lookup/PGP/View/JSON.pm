package Lookup::PGP::View::JSON;
use base qw( Catalyst::View::JSON );

__PACKAGE__->config({
    'View::JSON' => {
        allow_callback  => 1,
    },
});

1;
