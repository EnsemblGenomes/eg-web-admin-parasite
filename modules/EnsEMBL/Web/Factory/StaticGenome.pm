package EnsEMBL::Web::Factory::StaticGenome;

### NAME: EnsEMBL::Web::Factory::StaticGenome
### Very simple factory to produce EnsEMBL::Web::Object::StaticGenome objects

### STATUS: Stable

use strict;
use warnings;

use base qw(EnsEMBL::Web::Factory);

sub createObjects {
  my $self = shift;
  $self->DataObjects($self->new_object('StaticGenome', undef, $self->__data));
}


1;
