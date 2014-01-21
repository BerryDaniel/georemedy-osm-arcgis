create index lines_landmark_idx on lines (admin_level, boundary);

create view osm_country_border as
select osm_id::bigint,osm_timestamp::timestamp as last_modified,wkb_geometry from lines where boundary = 'administrative' and admin_level in ('2');

create view osm_state_border as
select osm_id::bigint,osm_timestamp::timestamp as last_modified,wkb_geometry from lines where boundary = 'administrative' and admin_level in ('4');

create view osm_county_border as
select osm_id::bigint,osm_timestamp::timestamp as last_modified,wkb_geometry from lines where boundary = 'administrative' and admin_level in ('6');