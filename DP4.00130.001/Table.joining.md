|Table 1|Table 2|Join by field(s)|
|------------------------|------------------------|-------------------------------|
csd_continuousDischarge|csd_gaugeWaterColumnRegression|regressionID
csd_continuousDischargeUSGS|csd_dischargeRegressionUSGS|usgsDischargeRegID
csd_dataGapToFillMethodMapping|csd_gapFillingRegression|gapFillRegressionID
csd_continuousDischarge|sdrc_gaugePressureRelationship|Not fully automatable: Join by regressionID and endDate truncated to YYYY-MM-DD HH:MM (without seconds)
csd_continuousDischarge|csd_dataGapToFillMethodMapping|Not fully automatable: Join by csd_continuousDischarge:endDate overlapping with date range of records in csd_dataGapToFillMethodMapping
csd_continuousDischarge|csd_constantBiasShift|Not fully automatable: Join by csd_continuousDischarge:endDate overlapping with date range of records in csd_constantBiasShift
csd_continuousDischarge|csd_gapFillingRegression|Not fully automatable: Join by csd_continuousDischarge:endDate overlapping with date range of records in csd_gapFillingRegression
csd_dataGapToFillMethodMapping|csd_constantBiasShift|Join not recommended, see User Guide
csd_gapFillingRegression|csd_constantBiasShift|Join not recommended, see User Guide
csd_continuousDischarge|csd_continuousDischargeUSGS|Join not recommended, see User Guide
csd_continuousDischarge|csd_dischargeRegressionUSGS|Join not recommended, see User Guide
csd_continuousDischargeUSGS|sdrc_gaugePressureRelationship|Join not recommended, see User Guide
