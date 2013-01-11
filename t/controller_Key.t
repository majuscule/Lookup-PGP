use strict;
use warnings;
use Test::More;


use Catalyst::Test 'Lookup::PGP';
use Lookup::PGP::Controller::Key;

ok( request('/key/8CD4C40F')->is_success, 'Request should succeed' );
done_testing();
