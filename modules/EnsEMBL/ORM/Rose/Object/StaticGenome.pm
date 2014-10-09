package EnsEMBL::ORM::Rose::Object::StaticGenome;

### NAME: EnsEMBL::ORM::Rose::Object::AnalysisDescription
### ORM class for the biotype table in ensembl_production

### STATUS: Stable 

use strict;
use warnings;

use base qw(EnsEMBL::ORM::Rose::Object::Trackable);

use constant ROSE_DB_NAME => 'production';

## Define schema
__PACKAGE__->meta->setup(
  table         => 'static_genome',

  columns       => [
    species_name => {type => 'varchar', 'length' => 50, primary_key => 1, not_null => 1},
    summary      => {type => 'text'},
    assembly     => {type => 'text'},
    annotation   => {type => 'text'},
    resources    => {type => 'text'},
    publication  => {type => 'text'},
  ],

  title_column  => 'species_name',

  unique_key    => ['species_name'],

);

1;
