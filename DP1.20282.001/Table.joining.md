|Table 1|Table 2|Join by field(s)|
|------------------------|------------------------|-------------------------------|
amc_fieldGenetic|mmg_swDnaExtraction|geneticSampleID
mmg\_swPcrAmplification\_16S|mmg_swDnaExtraction|dnaSampleID
mmg\_swPcrAmplification\_ITS|mmg_swDnaExtraction|dnaSampleID
mmg\_swMarkerGeneSequencing\_16S|mmg\_swPcrAmplification\_16S|dnaSampleID
mmg\_swMarkerGeneSequencing\_16S|mmg_swDnaExtraction|dnaSampleID
mmg\_swMarkerGeneSequencing\_ITS|mmg\_swPcrAmplification\_ITS|dnaSampleID
mmg\_swMarkerGeneSequencing\_ITS|mmg_swDnaExtraction|dnaSampleID
mmg_swRawDataFiles|mmg_swPcrAmplification_ITS|dnaSampleID
mmg_swRawDataFiles|mmg_swDnaExtraction|dnaSampleID
amc_fieldGenetic|amc_fieldSuperParent|parentSampleID
amc_fieldGenetic|mmg\_swMarkerGeneSequencing\_16S|Requires intermediate table: join via mmg_swDnaExtraction table
amc_fieldGenetic|mmg\_swMarkerGeneSequencing\_ITS|Requires intermediate table: join via mmg_swDnaExtraction table
amc_fieldGenetic|mmg\_swPcrAmplification\_16S|Requires intermediate table: join via mmg_swDnaExtraction table
amc_fieldGenetic|mmg\_swPcrAmplification\_ITS|Requires intermediate table: join via mmg_swDnaExtraction table
amc_fieldGenetic|mmg_swRawDataFiles|Requires intermediate table: join via mmg_swDnaExtraction table
amc_fieldSuperParent|mmg_swDnaExtraction|Requires intermediate table: join via amc_fieldGenetic table
amc_fieldSuperParent|mmg\_swMarkerGeneSequencing\_16S|Requires intermediate table: join via amc\_fieldGenetic and mmg\_swDnaExtraction tables
amc_fieldSuperParent|mmg\_swMarkerGeneSequencing\_ITS|Requires intermediate table: join via amc\_fieldGenetic and mmg\_swDnaExtraction tables
amc_fieldSuperParent|mmg\_swPcrAmplification\_16S|Requires intermediate table: join via amc\_fieldGenetic and mmg\_swDnaExtraction tables
amc_fieldSuperParent|mmg\_swPcrAmplification\_ITS|Requires intermediate table: join via amc\_fieldGenetic and mmg\_swDnaExtraction tables
amc_fieldSuperParent|mmg_swRawDataFiles|Requires intermediate table: join via amc\_fieldGenetic and mmg\_swDnaExtraction tables
mmg\_swMarkerGeneSequencing\_16S|mmg\_swMarkerGeneSequencing\_ITS|Join not recommended: different sequencing types
mmg\_swMarkerGeneSequencing\_16S|mmg\_swPcrAmplification\_ITS|mmg\_swMarkerGeneSequencing\_ITS|Join not recommended: different sequencing types
mmg\_swMarkerGeneSequencing\_16S|mmg_swRawDataFiles|dnaSampleID
mmg\_swMarkerGeneSequencing\_ITS|mmg\_swPcrAmplification\_16S|mmg\_swMarkerGeneSequencing\_ITS|Join not recommended: different sequencing types
mmg\_swMarkerGeneSequencing\_ITS|mmg_swRawDataFiles|dnaSampleID
mmg\_swPcrAmplification\_16S|mmg\_swPcrAmplification\_ITS|mmg\_swMarkerGeneSequencing\_ITS|Join not recommended: different sequencing types
mmg\_swPcrAmplification\_16S|mmg_swRawDataFiles|dnaSampleID
