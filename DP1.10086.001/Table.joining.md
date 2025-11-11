|Table 1|Table 2|Join by field(s)|
|------------------------|------------------------|-------------------------------|
sls_soilCoreCollection|sls_soilMoisture|sampleID
sls_soilCoreCollection|sls_soilpH|sampleID
sls_soilCoreCollection|sls_bgcSubsampling|sampleID
sls_soilCoreCollection|sls_metagenomicsPooling|Not fully automatable: multiple sampleIDs are pooled into genomicsPooledIDList
sls_bgcSubsampling|sls_soilChemistry|cnSampleID
ntr_internalLab|ntr_internalLabBlanks|kclReferenceID
sls_soilCoreCollection|ntr_internalLab|sampleID
ntr_internalLab|ntr_externalLab|kclSampleID
ntr_externalLab|ntr_internalLabBlanks|Not fully automatable: kclSampleID in ntr\_externalLab includes samples labeled as kclBlank1ID, kclBlank2ID, and kclBlank3ID in ntr\_internalLabBlanks
ntr_externalLab|sls_bgcSubsampling|sampleID
ntr_externalLab|sls_metagenomicsPooling|Direct join not recommended: nitrogen incubations are carried out on a different set of samples from genomic sequencing
ntr_externalLab|sls_soilChemistry|sampleID
ntr_externalLab|sls_soilCoreCollection|sampleID
ntr_externalLab|sls_soilMoisture|sampleID
ntr_externalLab|sls_soilpH|sampleID
ntr_internalLab|sls_bgcSubsampling|sampleID
ntr_internalLab|sls_metagenomicsPooling|Direct join not recommended: nitrogen incubations are carried out on a different set of samples from genomic sequencing
ntr_internalLab|sls_soilChemistry|sampleID
ntr_internalLab|sls_soilMoisture|sampleID
ntr_internalLab|sls_soilpH|sampleID
ntr_internalLabBlanks|sls_bgcSubsampling|Join not recommended: lab blanks are only relevant to nitrogen incubation samples
ntr_internalLabBlanks|sls_metagenomicsPooling|Join not recommended: lab blanks are only relevant to nitrogen incubation samples
ntr_internalLabBlanks|sls_soilChemistry|Join not recommended: lab blanks are only relevant to nitrogen incubation samples
ntr_internalLabBlanks|sls_soilCoreCollection|Join not recommended: lab blanks are only relevant to nitrogen incubation samples
ntr_internalLabBlanks|sls_soilMoisture|Join not recommended: lab blanks are only relevant to nitrogen incubation samples
ntr_internalLabBlanks|sls_soilpH|Join not recommended: lab blanks are only relevant to nitrogen incubation samples
sls_bgcSubsampling|sls_metagenomicsPooling|Not fully automatable: can be joined via the sls_soilCoreCollection table
sls_bgcSubsampling|sls_soilMoisture|sampleID
sls_bgcSubsampling|sls_soilpH|sampleID
sls_metagenomicsPooling|sls_soilChemistry|Not fully automatable: can be joined via the sls_soilCoreCollection table
sls_metagenomicsPooling|sls_soilMoisture|Not fully automatable: can be joined via the sls_soilCoreCollection table
sls_metagenomicsPooling|sls_soilpH|Not fully automatable: can be joined via the sls_soilCoreCollection table
sls_soilChemistry|sls_soilCoreCollection|sampleID
sls_soilChemistry|sls_soilMoisture|sampleID
sls_soilChemistry|sls_soilpH|sampleID
sls_soilMoisture|sls_soilpH|sampleID
bgc\_CNiso\_externalSummary|Any other table|Join not recommended. Data resolution does not match other tables.
ntr_externalSummary|Any other table|Join not recommended. Data resolution does not match other tables.
