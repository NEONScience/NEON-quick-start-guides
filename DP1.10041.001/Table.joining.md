|Table 1|Table 2|Join by field(s)|
|------------------------|------------------------|-------------------------------|
mos_pathogenpooling|mos_pathogenresults|testingVialID
mos_pathogenresults|mos_pathogenqa|Simple join not recommended. BatchIDs used for joining are replicated in both tables such that joining tables results in repeated records.  It is recommended to convert the pathogenqa table to wide format with multiple columns for controlType, then join by batchID.
mos_expertTaxonomistIDProcessed|mos_pathogenpooling|testingID
mos_expertTaxonomistIDRaw|mos_pathogenpooling|testingID
