create index multipoly_landmark_idx on multipolygons (aeroway, amenity, landuse, leisure, military, "natural", tourism);

create index lines_landmark_idx on lines (barrier);

create view osm_attraction as
select cast(case when osm_way_id is null then osm_id else osm_way_id end as bigint) as osm_id,osm_timestamp::timestamp as last_modified,ST_Intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326)) as wkb_geometry,cast(case when (name_en is not null) then name_en when (name_en is null) and (int_name is not null) then int_name else name end as varchar(128)) as name from multipolygons where tourism = 'attraction' or tourism = 'zoo';

create view osm_cemetery as
select cast(case when osm_way_id is null then osm_id else osm_way_id end as bigint) as osm_id,osm_timestamp::timestamp as last_modified,ST_Intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326)) as wkb_geometry,cast(case when (name_en is not null) then name_en when (name_en is null) and (int_name is not null) then int_name else name end as varchar(128)) as name from multipolygons where landuse = 'cemetery' or landuse = 'grave_yard' or amenity = 'grave_yard';

create view osm_barracks as
select cast(case when osm_way_id is null then osm_id else osm_way_id end as bigint) as osm_id,osm_timestamp::timestamp as last_modified,ST_Intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326)) as wkb_geometry,cast(case when (name_en is not null) then name_en when (name_en is null) and (int_name is not null) then int_name else name end as varchar(128)) as name from multipolygons where military = 'barracks';

create view osm_golf_course as
select cast(case when osm_way_id is null then osm_id else osm_way_id end as bigint) as osm_id,osm_timestamp::timestamp as last_modified,ST_Intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326)) as wkb_geometry,cast(case when (name_en is not null) then name_en when (name_en is null) and (int_name is not null) then int_name else name end as varchar(128)) as name from multipolygons where leisure = 'golf_course';

create view osm_beach as
select cast(case when osm_way_id is null then osm_id else osm_way_id end as bigint) as osm_id,osm_timestamp::timestamp as last_modified,ST_Intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326)) as wkb_geometry,cast(case when (name_en is not null) then name_en when (name_en is null) and (int_name is not null) then int_name else name end as varchar(128)) as name from multipolygons where "natural" = 'beach';

create view osm_parking_lot as
select cast(case when osm_way_id is null then osm_id else osm_way_id end as bigint) as osm_id,osm_timestamp::timestamp as last_modified,ST_Intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326)) as wkb_geometry,cast(case when (name_en is not null) then name_en when (name_en is null) and (int_name is not null) then int_name else name end as varchar(128)) as name from multipolygons where amenity = 'parking';

create view osm_stadium as
select cast(case when osm_way_id is null then osm_id else osm_way_id end as bigint) as osm_id,osm_timestamp::timestamp as last_modified,ST_Intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326)) as wkb_geometry,cast(case when (name_en is not null) then name_en when (name_en is null) and (int_name is not null) then int_name else name end as varchar(128)) as name from multipolygons where leisure = 'stadium' or leisure = 'sports_centre';

create view osm_school as
select cast(case when osm_way_id is null then osm_id else osm_way_id end as bigint) as osm_id,osm_timestamp::timestamp as last_modified,ST_Intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326)) as wkb_geometry,cast(case when (name_en is not null) then name_en when (name_en is null) and (int_name is not null) then int_name else name end as varchar(128)) as name from multipolygons where amenity = 'university' or amenity = 'college' or amenity = 'school' or amenity = 'kindergarten';

create view osm_hospital as
select cast(case when osm_way_id is null then osm_id else osm_way_id end as bigint) as osm_id,osm_timestamp::timestamp as last_modified,ST_Intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326)) as wkb_geometry,cast(case when (name_en is not null) then name_en when (name_en is null) and (int_name is not null) then int_name else name end as varchar(128)) as name from multipolygons where amenity = 'hospital';

create view osm_shopping_center as
select cast(case when osm_way_id is null then osm_id else osm_way_id end as bigint) as osm_id,osm_timestamp::timestamp as last_modified,ST_Intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326)) as wkb_geometry,cast(case when (name_en is not null) then name_en when (name_en is null) and (int_name is not null) then int_name else name end as varchar(128)) as name from multipolygons where landuse = 'retail';

create view osm_airport as
select cast(case when osm_way_id is null then osm_id else osm_way_id end as bigint) as osm_id,osm_timestamp::timestamp as last_modified,ST_Intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326)) as wkb_geometry,cast(case when (name_en is not null) then name_en when (name_en is null) and (int_name is not null) then int_name else name end as varchar(128)) as name from multipolygons where aeroway = 'apron' or aeroway = 'aerodrome';

create view osm_runway as
select cast(case when osm_way_id is null then osm_id else osm_way_id end as bigint) as osm_id,osm_timestamp::timestamp as last_modified,ST_Intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326)) as wkb_geometry,cast(case when (name_en is not null) then name_en when (name_en is null) and (int_name is not null) then int_name else name end as varchar(128)) as name from multipolygons where aeroway = 'runway';

create view osm_residential as
select cast(case when osm_way_id is null then osm_id else osm_way_id end as bigint) as osm_id,osm_timestamp::timestamp as last_modified,ST_Intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326)) as wkb_geometry,cast(case when (name_en is not null) then name_en when (name_en is null) and (int_name is not null) then int_name else name end as varchar(128)) as name from multipolygons where landuse = 'residential';

create view osm_hedge as
select osm_id::bigint,osm_timestamp::timestamp as last_modified,wkb_geometry from lines where barrier = 'hedge';

create view osm_barrier as
select osm_id::bigint,osm_timestamp::timestamp as last_modified,wkb_geometry from lines where barrier not in ('hedge');

create view osm_military as
select cast(case when osm_way_id is null then osm_id else osm_way_id end as bigint) as osm_id,osm_timestamp::timestamp as last_modified,ST_Intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326)) as wkb_geometry,round(ST_Area(ST_Intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326))::geography)) as geo_area,cast(case when (name_en is not null) then name_en when (name_en is null) and (int_name is not null) then int_name else name end as varchar(128)) as name from multipolygons where landuse = 'military';

create view osm_park as
select cast(case when osm_way_id is null then osm_id else osm_way_id end as bigint) as osm_id,osm_timestamp::timestamp as last_modified,ST_Intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326)) as wkb_geometry,round(ST_Area(ST_Intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326))::geography)) as geo_area,cast(case when (name_en is not null) then name_en when (name_en is null) and (int_name is not null) then int_name else name end as varchar(128)) as name from multipolygons where leisure = 'park' or leisure = 'playground' or landuse = 'recreation_ground' or leisure = 'recreation_ground' or leisure = 'nature_reserve' or leisure = 'common' or leisure = 'pitch' or landuse = 'grass';

create view osm_forest as
select cast(case when osm_way_id is null then osm_id else osm_way_id end as bigint) as osm_id,osm_timestamp::timestamp as last_modified,ST_Intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326)) as wkb_geometry,round(ST_Area(ST_Intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326))::geography)) as geo_area,cast(case when (name_en is not null) then name_en when (name_en is null) and (int_name is not null) then int_name else name end as varchar(128)) as name from multipolygons where landuse = 'forest' or leisure = 'recreation_ground' or landuse = 'recreation_ground' or landuse = 'conservation' or "natural" = 'wood' or landuse = 'wood' or "natural" = 'scrub';