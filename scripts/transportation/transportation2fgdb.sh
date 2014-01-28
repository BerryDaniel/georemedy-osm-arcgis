ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_transportationv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=postgres" -sql "select * from osm_motorway" -nln osm_motorway -nlt LINESTRING -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_transportationv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=postgres" -sql "select * from osm_interchange" -nln osm_interchange -nlt LINESTRING -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_transportationv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=postgres" -sql "select * from osm_trunk" -nln osm_trunk -nlt LINESTRING -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_transportationv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=postgres" -sql "select * from osm_primary" -nln osm_primary -nlt LINESTRING -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_transportationv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=postgres" -sql "select * from osm_secondary" -nln osm_secondary -nlt LINESTRING -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_transportationv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=postgres" -sql "select * from osm_tertiary" -nln osm_tertiary -nlt LINESTRING -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_transportationv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=postgres" -sql "select * from osm_alley" -nln osm_alley -nlt LINESTRING -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_transportationv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=postgres" -sql "select * from osm_cycle" -nln osm_cycle -nlt LINESTRING -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_transportationv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=postgres" -sql "select * from osm_walkway" -nln osm_walkway -nlt LINESTRING -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_transportationv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=postgres" -sql "select * from osm_steps" -nln osm_steps -nlt LINESTRING -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_transportationv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=postgres" -sql "select * from osm_rail" -nln osm_rail -nlt LINESTRING -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_transportationv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=postgres" -sql "select * from osm_ferry" -nln osm_ferry -nlt LINESTRING -a_srs EPSG:4326 -skipfailures