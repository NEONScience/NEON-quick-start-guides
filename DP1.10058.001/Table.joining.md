|Table 1|Table 2|Join by field(s)|
|------------------------|------------------------|-------------------------------|
div_1m2Data|div_10m2Data100m2Data|Direct join not recommended. See Standard calculations.
div_1m2Data|div_morphospecies|siteID, morphospeciesID
div_1m2Data|div_identificationHistory|identificationHistoryID
div_10m2Data100m2Data|div_morphospecies|siteID, morphospeciesID
div_10m2Data100m2Data|div_identificationHistory|identificationHistoryID
div_morphospecies|Any other table|Join not recommended. Data resolution does not match other tables.
div_geneticarchive|div_identificationHistory|identificationHistoryID
div_voucher|div_identificationHistory|identificationHistoryID

