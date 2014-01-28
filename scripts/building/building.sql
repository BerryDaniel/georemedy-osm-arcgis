create index multipoly_buildings_idx on multipolygons (railway, amenity, aeroway);

create view osm_building as
select osm_id::bigint,osm_timestamp::timestamp as last_modified,wkb_geometry,cast(case when (name_en is not null) then name_en when (name_en is null) and (int_name is not null) then int_name else name end as varchar(128)) as name from multipolygons where building is not null or railway = 'station' or amenity = 'place_of_worship' or aeroway = 'terminal';