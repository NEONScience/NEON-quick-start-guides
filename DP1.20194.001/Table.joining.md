|Table 1|Table 2|Join by field(s)|
|------------------|-------------------|--------------------|
asc_fieldDataStation|asc_fieldDataZone|namedLocation,startDate|
asc_fieldDataStation|asc_fieldDataPoint|Requires intermediate table: join via asc_fieldDataZone table|
asc_fieldDataStation|asc_externalLabData|namedLocation,startDate|
asc_externalLabData|asc_fieldDataPoint|Requires intermediate table: join via asc_fieldDataStation table|
asc_externalLabData|asc_fieldDataZone|Requires intermediate table: join via asc_fieldDataStation table|
asc_fieldDataPoint|asc_fieldDataZone|namedLocation,startDate,zoneNumber|
asc_externalLabSummary|Any other table|Join not recommended. Match by laboratoryName, analyte, method, and overlap of analysisDate with externalLabSummary dates.|
