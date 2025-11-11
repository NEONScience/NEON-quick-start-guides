|Table 1|Table 2|Join by field(s)|Notes
|------------------------|------------------------|-------------------------------|-------------------------------|
apl_clipHarvest|apl_pointTransect|eventID||
apl_clipHarvest|apc_morphospecies|Not fully automatable: Records can be connected by siteID and morphospeciesID, and overlap of collectDate with morphospeciesCreated and morphospeciesResolved dates||
apl_clipHarvest|apl_algaeExternalLabDataPerSample|sampleID||
apl_clipHarvest|apl_biomass|fieldID||
apl_biomass|apl_taxonomyRaw|sampleID|Note that there may be multiple records per sampleID in apl_taxonomyRaw, and not every record in apl_biomass has a corresponding record in apl_taxonomyRaw|
apl_biomass|apl_taxonomyProcessed|sampleID|Note that there may be multiple records per sampleID in apl_taxonomyProcessed, and not every record in apl_biomass has a corresponding record in apl_taxonomyProcessed|
apl_clipHarvest|apl_taxonomyRaw|Requires intermediate table: Join via apl_biomass table||
apl_clipHarvest|apl_taxonomyProcessed|Requires intermediate table: Join via apl_biomass table||
apl_taxonomyRaw|apl_taxonomyProcessed|Join not recommended. These tables contain identifications of the same samples with possibly differing higher-order taxonomy; see User Guide.||
apc_morphospecies|Any other table|Join not recommended. Data resolution does not match other tables.||
