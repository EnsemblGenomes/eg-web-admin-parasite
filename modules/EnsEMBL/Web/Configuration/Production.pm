package EnsEMBL::Web::Configuration::Production;

use strict;
use warnings;

use base qw(EnsEMBL::Web::Configuration::MultiDbFrontend);

use constant DEFAULT_ACTION => 'Search';

sub modify_tree {
  my $self = shift;
  my $hub  = $self->hub;
  $self->delete_node($_) for qw(Species AttribType ExternalDb);
  $self->create_multidbfrontend_menu('StaticSpecies', 'Static Content - Species', {'filters' => [qw(WebAdmin)]});
  $self->create_multidbfrontend_menu('StaticGenome', 'Static Content - Genome Projects', {'filters' => [qw(WebAdmin)]});
}

1;
