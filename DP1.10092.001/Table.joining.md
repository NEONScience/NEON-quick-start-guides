|Table 1|Table 2|Join by field(s)|
|-------------------|-------------------|--------------------|
tck_pathogen|tck_taxonomyProcessed|subsampleID|
tck_pathogen|tck_taxonomyRaw|subsampleID|
tck_pathogen|tck_pathogenqa|Simple join not recommended. BatchIDs used for joining are replicated in both tables such that joining tables results in repeated records.  It is recommended to convert the pathogenqa table to wide format with multiple columns for controlType, then join by batchID.|
