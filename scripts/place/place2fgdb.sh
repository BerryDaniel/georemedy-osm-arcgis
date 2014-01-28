ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" geonames_placev10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=postgres" -sql "select * from geonames_continent" -nln geonames_continent -nlt POINT -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" geonames_placev10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=postgres" -sql "select * from geonames_country" -nln geonames_country -nlt POINT -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" geonames_placev10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=postgres" -sql "select * from geonames_state" -nln geonames_state -nlt POINT -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" geonames_placev10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=postgres" -sql "select * from geonames_county" -nln geonames_county -nlt POINT -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" geonames_placev10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=postgres" -sql "select * from geonames_capital" -nln geonames_capital -nlt POINT -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" geonames_placev10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=postgres" -sql "select * from geonames_metropolis" -nln geonames_metropolis -nlt POINT -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" geonames_placev10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=postgres" -sql "select * from geonames_large_city" -nln geonames_large_city -nlt POINT -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" geonames_placev10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=postgres" -sql "select * from geonames_city" -nln geonames_city -nlt POINT -a_srs EPSG:4326 -skipfailures

ogr2ogr -gt 500000 -update -append --config FGDB_BULK_LOAD YES -progress -f "FileGDB" geonames_placev10.gdb "PG:host=localhost user=postgres dbname=osm_latest password=postgres" -sql "select * from geonames_town" -nln geonames_town -nlt POINT -a_srs EPSG:4326 -skipfailures