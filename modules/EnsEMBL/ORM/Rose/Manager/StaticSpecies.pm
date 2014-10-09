package EnsEMBL::ORM::Rose::Manager::StaticSpecies;

### NAME: EnsEMBL::ORM::Rose::Manager::StaticSpecies
### Module to handle multiple StaticSpecies entries 

### STATUS: Under Development

### DESCRIPTION:
### Enables fetching, counting, etc., of multiple Rose::Object::StaticSpecies objects

use strict;
use warnings;

use EnsEMBL::ORM::Rose::Object::StaticSpecies;

use base qw(EnsEMBL::ORM::Rose::Manager::Trackable);

sub object_class { 'EnsEMBL::ORM::Rose::Object::StaticSpecies' }

1;
