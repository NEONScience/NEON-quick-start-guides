|Table 1|Table 2|Join by field(s)|
|------------------------|------------------------|-------------------------------|
apc_perTaxon|apc_taxonomyRaw|sampleID|
apc_perTaxon|apc_taxonomyProcessed|sampleID|
apc_pointTransect|apc_perTaxon|namedLocation,pointNumber,collectDate|
apc_pointTransect|apc_taxonomyProcessed|Requires intermediate table: join via apc_perTaxon table|
apc_pointTransect|apc_taxonomyRaw|Requires intermediate table: join via apc_perTaxon table|
apc_taxonomyProcessed|apc_taxonomyRaw|Join not recommended. These tables contain identifications of the same samples with possibly differing higher-order taxonomy; see User Guide.|
apc_voucher|apc_voucherTaxonomyRaw|sampleID|
apc_voucher|apc_voucherTaxonomyProcessed|sampleID|
apc_morphospecies|Any other table|Join not recommended. Data resolution does not match other tables.|
