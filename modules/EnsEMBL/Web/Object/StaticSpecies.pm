package EnsEMBL::Web::Object::StaticSpecies;

use strict;

use base qw(EnsEMBL::Web::Object::DbFrontend);

### ### ### ### ### ### ### ### ###
### Inherited method overriding ###
### ### ### ### ### ### ### ### ###

sub manager_class {
  ## @overrides
  return shift->rose_manager('StaticSpecies');
}

sub show_fields {
  ## @overrides
  my $self = shift;
  return [
    species_name  => {
      'type'      => 'string',
      'label'     => 'Species Name'
    },
    description    => {
      'type'      => 'text',
      'label'     => 'Description'
    }
  ];
}

sub show_columns {
  ## @overrides
  return [
    species_name  => 'Species Name',
    description   => 'Description'
  ];
}

sub record_name {
  ## @overrides
  return {
    'singular' => 'static description',
    'plural'   => 'static descriptions'
  };
}

sub permit_delete {
  ## @overrides
  return 'delete';
}

1;
