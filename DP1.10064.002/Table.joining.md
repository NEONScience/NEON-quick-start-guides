|Table 1|Table 2|Join by field(s)|
|------------------|-------------------|--------------------|
rpt2_pathogentesting|mam_pertrapnight|Not fully automatable: pathogen testing results should be filtered to sampleIDs ending in either .E or .B and joined to mammal data via the earSampleID or via the bloodSampleID respectively.|
rpt2_pathogentesting|rpt2_pathogenqa|Simple join not recommended. BatchIDs used for joining are replicated in both tables such that joining tables results in repeated records.  It is recommended to convert the pathogenqa table to wide format with multiple columns for controlType, then join by batchID.|
