The taxon and location tables are not included in the download package; each record in a taxon type table (e.g., tax_small_mammal) provides URLs to them (Figure 1). To assemble the backbone taxonomy for a site:

1. Select the record for the site and version of interest. To interpret observational data, use the version from the same NEON data release as those data, not the most recent version: taxa used in older data may have been removed from later versions. On the Data Portal, each version is shown as available in the last month of the period covered by the data release it supports, so download this product by release rather than by date range.
2. Read the taxon table at taxonomyUrl and the location table at taxonomyLocationUrl. The same URLs repeat across every site in a taxon type (taxonomyUrl) or domain (taxonomyLocationUrl); read each unique URL only once.
3. Join the two tables on taxonID and filter to the siteID of interest.
4. To resolve a synonym or superseded code to its currently accepted taxon, join acceptedTaxonID to taxonID within the taxon table.

For example, in R, for a tax_small_mammal table loaded as `tax`:
```
rec <- tax[tax$siteID == "HARV", ]
rec <- rec[which.max(as.Date(rec$processedDate)), ]
taxa <- read.delim(rec$taxonomyUrl)
locs <- read.delim(rec$taxonomyLocationUrl)
backbone <- merge(taxa, locs[locs$siteID == "HARV", ], by = "taxonID")
```

taxonID is unique only within a taxon type: the same organism can have different taxonIDs in different taxon types, and the same taxonID can be used in more than one taxon type. Join observational data to the taxon table for the taxon type that the observational data product uses, and when combining taxon tables across taxon types, join on taxonTypeCode and taxonID together.
