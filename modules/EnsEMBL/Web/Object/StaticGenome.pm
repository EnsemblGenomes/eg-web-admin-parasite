package EnsEMBL::Web::Object::StaticGenome;

use strict;

use base qw(EnsEMBL::Web::Object::DbFrontend);

### ### ### ### ### ### ### ### ###
### Inherited method overriding ###
### ### ### ### ### ### ### ### ###

sub manager_class {
  ## @overrides
  return shift->rose_manager('StaticGenome');
}

sub show_fields {
  ## @overrides
  my $self = shift;
  return [
    species_name  => {
      'type'      => 'string',
      'label'     => 'Species Name'
    },
    summary       => {
      'type'      => 'string',
      'label'     => 'Summary'
    },
    assembly      => {
      'type'      => 'text',
      'label'     => 'Assembly'
    },
    annotation    => {
      'type'      => 'text',
      'label'     => 'Annotation',
    },
    resources     => {
      'type'      => 'text',
      'label'     => 'Resources',
    },
    publication   => {
      'type'      => 'text',
      'label'     => 'Publications',
    }
  ];
}

sub show_columns {
  ## @overrides
  return [
    species_name  => 'Species Name',
    summary       => 'Summary',
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
