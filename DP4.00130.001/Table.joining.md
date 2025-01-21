|Table 1|Table 2|Join by field(s)|
|------------------------|------------------------|-------------------------------|
csd_continuousDischarge|csd_gaugeWaterColumnRegression|regressionID
csd_continuousDischarge|sdrc_gaugePressureRelationship|Not fully automatable: Join by regressionID and endDate truncated to YYYY-MM-DD HH:MM (without seconds)
csd_continuousDischarge|csd_dataGapToFillMethodMapping|Not fully automatable: Join by matching endDate in Table 1 to record date range (from startDate to endDate) in Table 2
csd_continuousDischarge|csd_constantBiasShift|Not fully automatable: if csd_continuousDischarge:dischargeCorrectedShiftPre\\|dischargeCorrectedShiftPost = 1 and csd_constantBiasShift:gapFilledDataStream = continousDischarge, join by matching endDate in Table 1 to record date range (from startDate to endDate) in Table 2; if csd_continuousDischarge:waterColumnHeightCorrectedShiftPre\\|waterColumnHeightCorrectedShiftPost = 1 and csd_constantBiasShift:gapFilledDataStream = waterColumnHeight, join by matching endDate in Table 1 to record date range (from startDate to endDate) in Table 2
csd_continuousDischarge|csd_gapFillingRegression|Not fully automatable: if csd_continuousDischarge:dischargeGapFilledUSGS = 1 and csd_gapFillingRegression:gapFilledDataStream = continousDischarge, join by matching endDate in Table 1 to record date range (from startDate to endDate) in Table 2; if csd_continuousDischarge:waterColumnHeightGapFilledTransducer|waterColumnHeightGapFilledConductivity = 1 and csd_gapFillingRegression:gapFilledDataStream = waterColumnHeight, join by matching endDate in Table 1 to record date range (from startDate to endDate) in Table 2
csd_dataGapToFillMethodMapping|csd_gapFillingRegression|gapFillRegressionID
csd_dataGapToFillMethodMapping|csd_constantBiasShift|Join not recommended, see User Guide
csd_gapFillingRegression|csd_constantBiasShift|Join not recommended, see User Guide
csd_continuousDischargeUSGS|csd_dischargeRegressionUSGS|usgsDischargeRegID
csd_continuousDischarge|csd_continuousDischargeUSGS|Join not recommended, see User Guide
csd_continuousDischarge|csd_dischargeRegressionUSGS|Join not recommended, see User Guide
csd_continuousDischargeUSGS|sdrc_gaugePressureRelationship|Join not recommended, see User Guide
