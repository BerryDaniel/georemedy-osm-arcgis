A collection of scripts and documents that assist in the workflow of converting OpenStreetMap planet pbf files into ESRI File Geodatabase (Version 10) for use on a disconnected network. The output of the datasets are in WGS84 and are loosely based on the Open MapQuest style.

Current Layers Available:

BORDER - (country, state and county) - © OpenStreetMap contributors

WATER - (glacier, lake, basin, pond, river, intermittent river and stream) Credits - © OpenStreetMap contributors

LANDUSE - (hedge, barrier, attraction, cemetery, military, park, golf course, forest, beach, parking lot, stadium, school, hospital, shopping center, airport, runway, residential and barracks) Credits - © OpenStreetMap contributors

BASE - (Natural Earth I, OSM Land and Water WGS84 Bounding Box) Credits - Made with Natural Earth., © OpenStreetMap contributors

The intent of this conversion was to make OpenStreetMap data available for a disconnected network in WGS84 (EPSG:4326), for use in both an ESRI proprietary application (ArcGIS Desktop) and opensource application (QGIS Desktop).

Note: The conversion process, to include cleaning of geometries, is done using Open Source Geospatial Software. The software can be downloaded as a bundle at http://www.osgeo.org/ or by downloading the following components:

PostgreSQL with (PostGIS) - http://www.postgresql.org/, GDAL/OGR version 1.10 - http://www.gisinternals.com/sdk/, Cygwin a collection of tools which provide a Linux look and feel environment for Windows. - http://cygwin.com/

A free tool to view the outputed File Geodatabases is QGIS and can be downloaded at http://www.qgis.org/.

World coverage WGS84ArcGIS Layer packages available for download:

(152MB) http://download.georemedy.com/georemedy-osm-arcgis/lpk/georemedy%20Border.lpk

(6.5GB) http://download.georemedy.com/georemedy-osm-arcgis/lpk/georemedy%20Water.lpk

(6.2GB) http://download.georemedy.com/georemedy-osm-arcgis/lpk/georemedy%20Landuse.lpk

(871MB) http://download.georemedy.com/georemedy-osm-arcgis/lpk/georemedy%20Base.lpk
