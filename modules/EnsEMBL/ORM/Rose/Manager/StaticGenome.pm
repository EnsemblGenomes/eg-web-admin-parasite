package EnsEMBL::ORM::Rose::Manager::StaticGenome;

### NAME: EnsEMBL::ORM::Rose::Manager::StaticGenome
### Module to handle multiple StaticGenome entries 

### STATUS: Under Development

### DESCRIPTION:
### Enables fetching, counting, etc., of multiple Rose::Object::StaticGenome objects

use strict;
use warnings;

use EnsEMBL::ORM::Rose::Object::StaticGenome;

use base qw(EnsEMBL::ORM::Rose::Manager::Trackable);

sub object_class { 'EnsEMBL::ORM::Rose::Object::StaticGenome' }

1;
