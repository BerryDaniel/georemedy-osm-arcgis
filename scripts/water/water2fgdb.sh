ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_waterv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=postgres" -sql "select * from osm_river" -nln osm_river -nlt LINESTRING -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_waterv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=postgres" -sql "select * from osm_intmt_river" -nln osm_intmt_river -nlt LINESTRING -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_waterv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=postgres" -sql "select * from osm_stream" -nln osm_stream -nlt LINESTRING -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_waterv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=postgres" -sql "select * from osm_glacier" -nln osm_glacier -nlt MULTIPOLYGON -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_waterv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=postgres" -sql "select * from osm_pond" -nln osm_pond -nlt MULTIPOLYGON -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_waterv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=postgres" -sql "select * from osm_basin" -nln osm_basin -nlt MULTIPOLYGON -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_waterv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=postgres" -sql "select * from osm_lake" -nln osm_lake -nlt MULTIPOLYGON -a_srs EPSG:4326 -skipfailures