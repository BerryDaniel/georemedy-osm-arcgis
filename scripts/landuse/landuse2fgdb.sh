ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_landmarkv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=add_password" -sql "select * from osm_hedge" -nln osm_hedge -nlt LINESTRING -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_landmarkv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=add_password" -sql "select * from osm_barrier" -nln osm_barrier -nlt LINESTRING -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_landmarkv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=add_password" -sql "select * from osm_airport" -nln osm_airport -nlt MULTIPOLYGON -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_landmarkv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=add_password" -sql "select * from osm_attraction" -nln osm_attraction -nlt MULTIPOLYGON -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_landmarkv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=add_password" -sql "select * from osm_barracks" -nln osm_barracks -nlt MULTIPOLYGON -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_landmarkv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=add_password" -sql "select * from osm_beach" -nln osm_beach -nlt MULTIPOLYGON -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_landmarkv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=add_password" -sql "select * from osm_cemetery" -nln osm_cemetery -nlt MULTIPOLYGON -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_landmarkv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=add_password" -sql "select * from osm_forest" -nln osm_forest -nlt MULTIPOLYGON -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_landmarkv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=add_password" -sql "select * from osm_golf_course" -nln osm_golf_course -nlt MULTIPOLYGON -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_landmarkv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=add_password" -sql "select * from osm_hospital" -nln osm_hospital -nlt MULTIPOLYGON -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_landmarkv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=add_password" -sql "select * from osm_military" -nln osm_military -nlt MULTIPOLYGON -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_landmarkv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=add_password" -sql "select * from osm_park" -nln osm_park -nlt MULTIPOLYGON -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_landmarkv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=add_password" -sql "select * from osm_parking_lot" -nln osm_parking_lot -nlt MULTIPOLYGON -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_landmarkv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=add_password" -sql "select * from osm_residential" -nln osm_residential -nlt MULTIPOLYGON -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_landmarkv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=add_password" -sql "select * from osm_runway" -nln osm_runway -nlt MULTIPOLYGON -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_landmarkv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=add_password" -sql "select * from osm_school" -nln osm_school -nlt MULTIPOLYGON -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_landmarkv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=add_password" -sql "select * from osm_shopping_center" -nln osm_shopping_center -nlt MULTIPOLYGON -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" osm_landmarkv10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=add_password" -sql "select * from osm_stadium" -nln osm_stadium -nlt MULTIPOLYGON -a_srs EPSG:4326 -skipfailures