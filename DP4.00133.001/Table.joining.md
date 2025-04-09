|Table 1|Table 2|Join by field Table 1|Join by field Table 2|
|------------------|-------------------|--------------------|---------------------|
sdrc_gaugeDischargeMeas|sdrc_resultsResiduals|gaugeEventID|gaugeEventID|
sdrc_stageDischargeCurveInfo|sdrc_resultsResiduals|curveID|curveID|
sdrc_stageDischargeCurveInfo|sdrc_gaugeDischargeMeas|curveID|curveID|
sdrc_posteriorParameters|sdrc_stageDischargeCurveInfo|curveID|curveID|
sdrc_posteriorParameters|sdrc_sampledParameters|curveID,controlNumber|curveID,controlNumber|
sdrc_posteriorParameters|sdrc_resultsResiduals|Join not recommended. Data can generally be related by curveID||
sdrc_stageDischargeCurveInfo|sdrc_curveIdentification|curveID|curveID|
sdrc_curveIdentification|sdrc_controlInfo|controlSurveyEndDateTime|endDate|
sdrc_curveIdentification|sdrc_controlType|controlSurveyEndDateTime|endDate|
sdrc_curveIdentification|sdrc_priorParameters|controlSurveyEndDateTime|endDate|
sdrc_stageDischargeCurveInfo|bat_curveIdentification|curveID|curveID|
sdrc_curveIdentification|sdrc_gaugeDischargeMeas|Join not recommended. Data can generally be related by curveID||
sdrc_curveIdentification|sdrc_posteriorParameters|Join not recommended. Data can generally be related by curveID||
sdrc_curveIdentification|sdrc_resultsResiduals|Join not recommended. Data can generally be related by curveID||
sdrc_curveIdentification|sdrc_sampledParameters|Join not recommended. Data can generally be related by curveID||
sdrc_gaugeDischargeMeas|sdrc_posteriorParameters|Join not recommended. Data can generally be related by curveID||
sdrc_gaugeDischargeMeas|sdrc_sampledParameters|Join not recommended. Data can generally be related by curveID||
sdrc_resultsResiduals|sdrc_sampledParameters|Join not recommended. Data can generally be related by curveID||
sdrc_sampledParameters|sdrc_stageDischargeCurveInfo|Join not recommended. Data can generally be related by curveID||
sdrc_controlInfo|Any other table|Join not recommended. Data can generally be related by site of sampling.||
sdrc_controlType|Any other table than those above|Join not recommended. Data can generally be related by site of sampling.||
sdrc_priorParameters|Any other table than those above|Join not recommended. Data can generally be related by site of sampling.||
sdrc_AISsiteSurveyResultsFile|Any other table|Join not recommended. Data can generally be related by site of sampling.||