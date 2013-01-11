use strict;
use warnings;

use Lookup::PGP;

my $app = Lookup::PGP->apply_default_middlewares(Lookup::PGP->psgi_app);
$app;

