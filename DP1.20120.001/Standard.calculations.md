For quantitative results, follow these steps prior to analyzing data:

1. Join expert taxonomy and field data tables
inv_join <- neonOS::joinTableNEON(inv_taxonomyProcessed, inv_fieldData)

2. Calculate macroinvertebrate abundance per square meter
inv_join$abunPerM2 <- inv_join$estimatedTotalCount / inv_join$benthicArea
