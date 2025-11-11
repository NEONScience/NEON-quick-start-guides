|Table 1|Table 2|Join by field(s)|
|------------------------|------------------------|-------------------------------|
zoo_fieldData|zoo_dnaExtraction|geneticSampleID
zoo_dnaExtraction|zoo_pcrAmplification|dnaSampleID
zoo_dnaExtraction|zoo_markerGeneSequencing|dnaSampleID
zoo_dnaExtraction|zoo_dnaRawDataFiles|dnaSampleID
inv_dnaExtractionStandard|inv_pcrAmplificationStandard|dnaSampleID
inv_dnaExtractionStandard|inv_markerGeneSequencingStandard|dnaSampleID
inv_dnaExtractionStandard|inv_dnaRawDataFilesStandard|dnaSampleID
zoo_dnaExtraction|zoo_metabarcodeTaxonomy|Join not recommended. Data resolution does not match other tables.
zoo_dnaRawDataFiles|zoo_fieldData|Requires intermediate table: join via zoo_dnaExtraction table
zoo_dnaRawDataFiles|zoo_markerGeneSequencing|Join not recommended. Join via dnaSampleID will double records.
zoo_dnaRawDataFiles|zoo_metabarcodeTaxonomy|Join not recommended. Join via dnaSampleID will double records.
zoo_dnaRawDataFiles|zoo_pcrAmplification|Join not recommended. Join via dnaSampleID will double records.
zoo_fieldData|zoo_markerGeneSequencing|Requires intermediate table: join via zoo_dnaExtraction table
zoo_fieldData|zoo_metabarcodeTaxonomy|Requires intermediate table: join via zoo_dnaExtraction table
zoo_fieldData|zoo_pcrAmplification|Requires intermediate table: join via zoo_dnaExtraction table
zoo_markerGeneSequencing|zoo_metabarcodeTaxonomy|Join not recommended. Data resolution does not match other tables.
zoo_markerGeneSequencing|zoo_pcrAmplification|dnaSampleID,primerSetID
zoo_metabarcodeTaxonomy|zoo_pcrAmplification|Join not recommended. Data resolution does not match other tables.
inv_dnaExtractionStandard|Any other table|Join not recommended. Data resolution does not match other tables.
inv_dnaRawDataFilesStandard|Any other table|Join not recommended. Data resolution does not match other tables.
inv_markerGeneSequencingStandard|Any other table|Join not recommended. Data resolution does not match other tables.
inv_metabarcodeSummary|Any other table|Join not recommended. Data resolution does not match other tables.
inv_metabarcodeTaxonList|Any other table|Join not recommended. Data resolution does not match other tables.
inv_pcrAmplificationStandard|Any other table|Join not recommended. Data resolution does not match other tables.
