|Table 1|Table 2|Join by field(s)|
|------------------------|------------------------|-------------------------------|
dsc_fieldData|dsc_individualFieldData|Direct join not recommended: filter to dsc_fieldData:DischargeBoutTypeID equal to 'flowmeter' or 'flowmeter_rea', then join on namedLocation, collectDate
dsc_fieldData|dsc_fieldDataADCP|Direct join not recommended: filter to dsc_fieldData:DischargeBoutTypeID equal to 'adcp' or 'adcp_rea', then join on namedLocation, collectDate
dsc_fieldDataADCP|dsc_individualFieldData|Join not recommended: each table contains data for mutually exclusive discharge measurement methods
