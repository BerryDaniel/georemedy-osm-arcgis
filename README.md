A collection of scripts and documents that assist in the workflow of converting OpenStreetMap planet pbf files into ESRI File Geodatabase (Version 10) for use on a disconnected network. The output of the datasets are in WGS84 and are loosely based on the Open MapQuest style.

The intent of this conversion was to make OpenStreetMap data available for a disconnected network in WGS84 (EPSG:4326), for use in both an ESRI proprietary application (ArcGIS Desktop) and opensource application (QGIS Desktop).

BASE - (Natural Earth Vector, OSM Land and Water WGS84 Bounding Box) Credits - Made with Natural Earth., © OpenStreetMap contributors - download layer package (Versions 10.1, 10.0 and 9.3.1) @ http://download.georemedy.com/georemedy-osm-arcgis/lpk/Base%20Layer.lpk (463MB)

Note: The conversion process, to include cleaning of geometries, is done using Open Source Geospatial Software. The software can be downloaded as a bundle at http://www.osgeo.org/ or by downloading the following components:

PostgreSQL with (PostGIS) - http://www.postgresql.org/, GDAL/OGR version 1.10 - http://www.gisinternals.com/sdk/, Cygwin a collection of tools which provide a Linux look and feel environment for Windows. - http://cygwin.com/

A free tool to view the outputed File Geodatabases is QGIS and can be downloaded at http://www.qgis.org/.

The data was styled and packaged using ArcGIS 10.2