#!/bin/sh

wget http://planet.osm.org/pbf/planet-latest.osm.pbf

ogr2ogr --config OGR_INTERLEAVED_READING YES --config OSM_MAX_TMPFILE_SIZE 24000 -f PostgreSQL "PG:host=localhost user=postgres dbname=osm_latest password=postgres" planet-latest.osm.pbf --debug on 2>osm_import.log

psql osm_latest < osm_geom_patch.sql