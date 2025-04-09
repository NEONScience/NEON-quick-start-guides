## Writing instructions

### General instructions

Quick Start Guides (QSGs) are knit automatically from the .txt and .md files in this repo. This means the file names and content are tightly constrained. The document sections listed below are the only ones allowed. If you have content that doesn't fit in one of those sections, consult the data product leads. If there is no relevant content for a particular section, omit the file.

The QSGs must be simple documents to maximize the chance that they will be read by NEON data users. Links to other documents are provided for users who want additional information.

Only include information that is essential to understand and use the data product. Examples of information that would typically NOT be considered essential are:

* Domain- or site-specific caveats
* Related data products unless they have a very important parent or child relationship (e.g., the product in question is derived from another product)


### Document sections

#### Measurement
A brief, one or two sentence narrative description of what type of data are available in the data product. Include units if appropriate.

#### Collection methodology
Brief narrative description of collection method, generally including spatial and temporal extent.

#### Image and Image legend
An informative picture or table that clarifies measurement and/or processing methods and/or workflows (if appropriate), and an appropriate caption.

#### Data processing and derivation
Applies only to data products with more complex processing than the OS generic transition, or the basic IS time aggregation and flagging. Describe the algorithm(s) used to generate the product.

#### Data quality
Focus on information provided in the data product that inform the user about the quality of the data - quality flags, QC fields returned by analytical labs, replicate samples, etc. This section is not intended to provide a comprehensive picture of NEON QAQC procedures, but to guide the user in data wrangling.

#### Standard calculations
Calculations that users should expect to need to make to use the data. Examples:

* AOP L1 spectrometer data (DP1.30006.001) are multiplied by a scale factor; users should divide by 10,000 to return the data to a 0 to 1 scale.
* Some tables in phenology (DP1.10055.001) contain an editedDate field; users should use only the most recently edited records.

#### Table joining
Relevant to data processed via the OS pipeline. A table of paired table names and the field(s) that provide a linking variable to join the tables. Used to inform the function joinTableNEON() in the neonOS R package; this section is machine-read by the function, so the content is very rigid. See the table joining instructions document.

#### References
If relevant, list references cited in the QSG.
