|Table 1|Table 2|Join by field(s)|
|------------------------|------------------------|-------------------------------|
fsh_fieldData|fsh_perPass|reachID
fsh_perFish|fsh_perPass|eventID
fsh_bulkCount|fsh_perPass|eventID
fsh_morphospecies|fsh_perFish|morphospeciesID
fsh_morphospecies|fsh_bulkCount|morphospeciesID
fsh_fieldData|fsh_morphospecies|Join not recommended: data can be related via date of sampling
fsh_perPass|fsh_morphospecies|Join not recommended: data can be related via date of sampling
fsh_bulkCount|fsh_fieldData|Requires intermediate table: join via fsh_perpass table
fsh_bulkCount|fsh_perFish|Join not recommended: data can be related via date of sampling
fsh_fieldData|fsh_perFish|Join not recommended: data can be related via date of sampling
