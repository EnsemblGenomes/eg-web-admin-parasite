package EnsEMBL::EGAdmin::ParaSite::SiteDefs;
use strict;


sub update_conf {   
  $SiteDefs::ENSEMBL_WEBADMIN_ID = 169;

  $SiteDefs::OBJECT_TO_SCRIPT = {

    Healthcheck     => 'Page',

    UserDirectory   => 'Page',

    AnalysisDesc    => 'Modal',
    Biotype         => 'Modal',
    Changelog       => 'Modal',
    Metakey         => 'Modal',
    Production      => 'Modal',
    Species         => 'Modal',
    SpeciesAlias    => 'Modal',
    Webdata         => 'Modal',
    AttribType      => 'Modal',
    ExternalDb      => 'Modal',

    HelpRecord      => 'Modal',
    HelpLink        => 'Modal',

    Documents       => 'Page',

    Account         => 'Modal',
    
    StaticSpecies   => 'Modal',
    StaticGenome    => 'Modal',

  };

}

1;
