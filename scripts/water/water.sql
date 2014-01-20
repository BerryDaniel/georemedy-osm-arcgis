create index lines_water_idx on lines (bridge, disused, waterway);

create index multipoly_water_idx on multipolygons (landuse, "natural", waterway);

create view osm_river as
select osm_id::bigint,osm_timestamp::timestamp as last_modified,wkb_geometry,cast(case when (name_en is not null) then name_en when (name_en is null) and (int_name is not null) then int_name else name end as varchar(128)) as name from lines where (waterway = 'river' or waterway = 'weir' or (waterway = 'canal' and not disused = 'yes')) and (bridge is null or bridge not in ('yes','true','1','aqueduct'));

create view osm_intmt_river as
select osm_id::bigint,osm_timestamp::timestamp as last_modified,wkb_geometry,cast(case when (name_en is not null) then name_en when (name_en is null) and (int_name is not null) then int_name else name end as varchar(128)) as name from lines where (waterway = 'derelict_canal' or (waterway = 'canal' and disused = 'yes')) and (bridge is null or bridge not in ('yes','true','1','aqueduct'));

create view osm_stream as
select osm_id::bigint,osm_timestamp::timestamp as last_modified,wkb_geometry,cast(case when (name_en is not null) then name_en when (name_en is null) and (int_name is not null) then int_name else name end as varchar(128)) as name from lines where (waterway = 'stream' or waterway = 'drain' or waterway = 'ditch') and (bridge is null or bridge not in ('yes','true','1','aqueduct'));

create view osm_glacier as
select cast(case when osm_way_id is null then osm_id else osm_way_id end as bigint) as osm_id,osm_timestamp::timestamp as last_modified,ST_Intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326)) as wkb_geometry,round(ST_Area(ST_Intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326))::geography)) as geo_area,cast(case when (name_en is not null) then name_en when (name_en is null) and (int_name is not null) then int_name else name end as varchar(128)) as name from multipolygons where "natural" = 'glacier';

create view osm_pond as
select cast(case when osm_way_id is null then osm_id else osm_way_id end as bigint) as osm_id,osm_timestamp::timestamp as last_modified,ST_Intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326)) as wkb_geometry,round(ST_Area(ST_Intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326))::geography)) as geo_area,cast(case when (name_en is not null) then name_en when (name_en is null) and (int_name is not null) then int_name else name end as varchar(128)) as name from multipolygons where waterway = 'dock' or waterway = 'mill_pond' or waterway = 'canal';

create view osm_basin as
select cast(case when osm_way_id is null then osm_id else osm_way_id end as bigint) as osm_id,osm_timestamp::timestamp as last_modified,ST_Intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326)) as wkb_geometry,round(ST_Area(ST_Intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326))::geography)) as geo_area,cast(case when (name_en is not null) then name_en when (name_en is null) and (int_name is not null) then int_name else name end as varchar(128)) as name from multipolygons where landuse = 'basin';

create view osm_lake as
select cast(case when osm_way_id is null then osm_id else osm_way_id end as bigint) as osm_id,osm_timestamp::timestamp as last_modified,ST_Intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326)) as wkb_geometry,round(ST_Area(ST_Intersection(wkb_geometry, st_makeenvelope(-180, -90, 180, 90, 4326))::geography)) as geo_area,cast(case when (name_en is not null) then name_en when (name_en is null) and (int_name is not null) then int_name else name end as varchar(128)) as name from multipolygons where "natural" = 'lake' or "natural" = 'water' or landuse = 'reservoir' or waterway = 'riverbank' or landuse = 'water';

