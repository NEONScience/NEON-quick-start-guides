<!DOCTYPE html>
<html lang="en-us">
<head>
    <meta charset="utf-8">
    <title>NEON Data Product Quick Start Guide - {{> DP.PRODUCT_CODE ignoreNoWrap }}</title>
    <meta name="subject" content="NEON Data Product Quick Start Guide - {{> DP.PRODUCT_CODE ignoreNoWrap }}"/>
    <meta name="author" content="National Ecological Observatory Network"/>
    <meta name="description" content="NEON Data Product Quick Start Guide - {{> DP.PRODUCT_CODE ignoreNoWrap }}"/>
    <style neon-qsg-standalone-html-remove>
        @page {
            size: letter;
            margin-top: 1.25in;
            margin-bottom: 1.5in;
            margin-left: 1in;
            margin-right: 1in;
            @top-left {
                content: element(neon-header);
                vertical-align: top;
                padding-top: 44px
            }
            @top-right {
                font-family: 'Inter', sans-serif;
                font-size: 12px;
                color: #7c7f80;
                content: 'Page ' counter(page) ' of ' counter(pages);
                vertical-align: top; 
                padding-top: 60px;
            }
            @bottom-left {
                content: element(neon-footer);
                vertical-align: top;
                padding-top: 40px;
            }
        }
    </style>
    <style neon-qsg-standalone-html-remove>
        header {
            position: running(neon-header);
        }
        footer {
            position: running(neon-footer);
        }
    </style>
</head>
<body>
<header>
    <img 
        src="https://raw.githubusercontent.com/NEONScience/NEON-quick-start-guides/main/Header.png"
        alt="NEON Header"
        height="48"
    />
</header>
<footer neon-qsg-standalone-html-remove>
    <img
        src="https://raw.githubusercontent.com/NEONScience/NEON-quick-start-guides/main/Footer.png"
        alt="NEON Footer"
        width="623"
    />
</footer>
<!-- HTML to PDF Converter Specific for PDF Bookmarks -->
<bookmarks neon-qsg-standalone-html-remove>
    <bookmark name="Measurement" href="#measurement"/>
    <bookmark name="Collection Methodology" href="#collection-methodology"/>
    {{if DP.TYPE [AIS, TIS, AOS, TOS, TOS-structured TIS] }}
    <bookmark name="Data Package Contents" href="#data-package-contents"/>
    {{end}}
    {{if REPO.FILE [Data.processing.and.derivation] }}
    <bookmark name="Data Processing and Derivation" href="#data-processing-and-derivation"/>
    {{end}}
    {{if REPO.FILE [Data.quality] }}
    <bookmark name="Data Quality" href="#data-quality"/>
    {{end}}
    {{if REPO.FILE [Standard.calculations] }}
    <bookmark name="Standard Calculations" href="#standard-calculations"/>
    {{end}}
    {{if REPO.FILE [Table.joining] }}
    <bookmark name="Table Joining" href="#table-joining"/>
    {{end}}
    <bookmark name="Documentation" href="#documentation"/>
    <bookmark name="Citation" href="#citation"/>
    {{if REPO.FILE [References] }}
    <bookmark name="References" href="#references"/>
    {{end}}
</bookmarks>
<main>
<article class="markdown-body">

# {{> DP.NAME }} ({{> DP.PRODUCT_CODE }})

## Measurement
{{. Measurement }}

## Collection methodology
{{. Collection.methodology }}

For information about disturbances, land management activities, and other incidents that may impact data at NEON sites, see the [Site management and event reporting (DP1.10111.001)](https://data.neonscience.org/data-products/DP1.10111.001) data product.

{{if REPO.FILE [Maintenance.and.calibration] }}
## Maintenance and calibration
{{. Maintenance.and.calibration }}  
{{end}}

{{# .Images }}  
{{. Image# }}  
{{. Image.legend# }}  
{{/ .Images }}

{{if DP.TYPE [AIS, TIS, AOS, TOS, TOS-structured TIS] }}
## Data package contents
{{# PUB.TABLES }}  
{{> PUB.TABLE.DEF tableName }}: {{> PUB.TABLE.DEF description }}  
{{/ PUB.TABLES }}  
variables: Description and units for each column of data in data tables  
readme: Data product description, issue log, and other metadata about the data product  
{{if DP.TYPE [AIS, TIS] }}  
sensor_positions: Geospatial locations of individual sensors  
{{end}}  
{{if DP.TYPE [AOS, TOS, TOS-structured TIS] }}  
validation: Description of data validation applied at the points of collection and ingest  
{{end}}  
{{end}}

{{if REPO.FILE [Data.processing.and.derivation] }}
## Data processing and derivation
{{. Data.processing.and.derivation }}  
{{end}}

{{if REPO.FILE [Data.quality] }}
## Data quality
{{. Data.quality }}  
{{end}}

{{if REPO.FILE [Standard.calculations] }}
## Standard calculations
For wrapper functions to download data from the API, and functions to merge tabular data files across sites and months, NEON provides the neonUtilities package in R and the neonutilities package in Python. See the [Download and Explore NEON Data](https://www.neonscience.org/resources/learning-hub/tutorials/download-explore-neon-data) tutorial for introductory instructions in both programming languages.

{{. Standard.calculations }}  
{{end}}

{{if REPO.FILE [Table.joining] }}
## Table joining
{{. Table.joining }}  
{{end}}

## Documentation
{{> DP.DOCUMENTS }}

## Citation
{{> CITATION }}

{{if REPO.FILE [References] }}
## References
{{. References }}  
{{end}}

## Contact Us
NEON welcomes discussion with data users! Reach out with any questions or concerns about NEON data: [Contact Us](https://www.neonscience.org/about/contact-us)


</article>
</main>
</body>
</html>
