package EnsEMBL::Web::Factory::StaticSpecies;

### NAME: EnsEMBL::Web::Factory::StaticSpecies
### Very simple factory to produce EnsEMBL::Web::Object::StaticSpecies objects

### STATUS: Stable

use strict;
use warnings;

use base qw(EnsEMBL::Web::Factory);

sub createObjects {
  my $self = shift;
  $self->DataObjects($self->new_object('StaticSpecies', undef, $self->__data));
}


1;
