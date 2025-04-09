|Table 1|Table 2|Join by field(s)|
|------------------------|------------------------|-------------------------------|
vst_perplotperyear|vst_mappingandtagging|Join not recommended: vst\_perplotperyear and vst\_mappingand tagging represent different temporal resolution
vst_mappingandtagging|vst_apparentindividual|individualID
vst_perplotperyear|vst_apparentindividual|Join not recommended: vst_perplotperyear provides annual metadata at the plot level
vst_shrubgroup|vst_perplotperyear|Join not recommended: vst_perplotperyear provides annual metadata at the plot level
vst_shrubgroup|vst_apparentindividual|Join not recommended: vst\_shrubgroup and vst\_apparentindividual represent non-overlapping sets of plants
vst_mappingandtagging|vst_shrubgroup|Join not recommended: shrubs are not mapped
vst_shrubgroup|vst_non-woody|Join not recommended: vst\_shrubgroup and vst\_non-woody represent non-overlapping sets of plants
vst_non-woody|vst_perplotperyear|Join not recommended: vst_perplotperyear provides annual metadata at the plot level
vst_non-woody|vst_apparentindividual|Join not recommended: vst\_non-woody and vst\_apparentindividual represent non-overlapping sets of plants
vst_mappingandtagging|vst_non-woody|individualID
vst_mappingandtagging|vst_identificationHistory|identificationHistoryID
