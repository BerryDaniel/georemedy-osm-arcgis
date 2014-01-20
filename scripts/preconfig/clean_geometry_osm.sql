/*
clean_geometry_osm.sql requires that you install the cleangeometry function - http://www.kappasys.ch/pgtools/cleangeometry/cleanGeometry.sql

install example :
psql osm_latest < cleanGeometry.sql

*/

-- Validated the bad geometries found only contained one point
delete from lines where not ST_IsValid(wkb_geometry);

-- Step one to clean the bad geometries
update multipolygons set wkb_geometry=ST_CollectionExtract(ST_Force_Collection(ST_MakeValid(wkb_geometry)),3);

-- Step two to clean the bad geometries
update multipolygons set wkb_geometry=cleangeometry(wkb_geometry);

-- Final step, delete any remaining bad geometries
delete from multipolygons where not ST_IsValid(wkb_geometry);