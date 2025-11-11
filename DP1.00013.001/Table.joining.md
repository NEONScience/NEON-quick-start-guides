|Table 1|Table 2|Join by field Table 1|Join by field Table 2|
|------------------------|------------------------|-------------------------------|----------------------------------|
wdp_collection|wdp_collectionChem|chemSubsampleID|chemSubsampleID|
wdp_collection|wdp_chemLab|chemSubsampleID|chemSubsampleID|
wdp_collection|wdi_collection|sampleID|sampleID|
wdp_chemLab|wdp_collectionChem|chemSubsampleID|chemSubsampleID|
wdp_sensor|Any other table|Join not recommended: wdp_sensor contains records of collection assembly status every 10 seconds. Collections are made every two weeks.|Join not recommended: wdp_sensor contains records of collection assembly status every 10 seconds. Collections are made every two weeks.|
