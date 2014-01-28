create index lines_highway_idx on lines (highway);

create index lines_cycle_idx on lines (cycle);

create index lines_rail_idx on lines (railway);

create index lines_route_idx on lines (route);

create view osm_motorway as 
select 
cast(floor(cast(osm_id as numeric))as bigint) as osm_id, 
osm_timestamp::timestamp as last_modified,
wkb_geometry,
cast (highway as varchar(25)),
cast(case when (name_en is not null) then regexp_replace(name_en,E';|,|-|FIXME',E'','gi') when (name_en is null) and (int_name is not null) then regexp_replace(int_name,E';|,|-|FIXME',E'','gi') else regexp_replace(name,E';|,|-|FIXME',E'','gi') end as varchar(128)) as name,
cast(case when ref is null then null else regexp_replace(regexp_replace(ref,E'\\s*[;,]\\s*',E'/','g'),E'\\s|-|FIXME',E'','gi') end as varchar(64)) as ref, 
cast(case when tunnel in ('yes','true','1') then 'yes' else tunnel end as varchar(3)) as tunnel
from lines
where highway in ('motorway');

create view osm_interchange as 
select 
cast(floor(cast(osm_id as numeric))as bigint) as osm_id, 
osm_timestamp::timestamp as last_modified,
wkb_geometry,
cast (highway as varchar(25)),
cast(case when (name_en is not null) then regexp_replace(name_en,E';|,|-|FIXME',E'','gi') when (name_en is null) and (int_name is not null) then regexp_replace(int_name,E';|,|-|FIXME',E'','gi') else regexp_replace(name,E';|,|-|FIXME',E'','gi') end as varchar(128)) as name,
cast(case when ref is null then null else regexp_replace(regexp_replace(ref,E'\\s*[;,]\\s*',E'/','g'),E'\\s|-|FIXME',E'','gi') end as varchar(64)) as ref, 
cast(case when tunnel in ('yes','true','1') then 'yes' else tunnel end as varchar(3)) as tunnel
from lines
where highway in ('motorway_link');

create view osm_trunk as 
select 
cast(floor(cast(osm_id as numeric))as bigint) as osm_id, 
osm_timestamp::timestamp as last_modified,
wkb_geometry,
cast (highway as varchar(25)),
cast(case when (name_en is not null) then regexp_replace(name_en,E';|,|-|FIXME',E'','gi') when (name_en is null) and (int_name is not null) then regexp_replace(int_name,E';|,|-|FIXME',E'','gi') else regexp_replace(name,E';|,|-|FIXME',E'','gi') end as varchar(128)) as name,
cast(case when ref is null then null else regexp_replace(regexp_replace(ref,E'\\s*[;,]\\s*',E'/','g'),E'\\s|-|FIXME',E'','gi') end as varchar(64)) as ref, 
cast(case when tunnel in ('yes','true','1') then 'yes' else tunnel end as varchar(3)) as tunnel
from lines
where highway in ('trunk', 'trunk_link');

create view osm_primary as 
select 
cast(floor(cast(osm_id as numeric))as bigint) as osm_id, 
osm_timestamp::timestamp as last_modified,
wkb_geometry,
cast (highway as varchar(25)),
cast(case when (name_en is not null) then regexp_replace(name_en,E';|,|-|FIXME',E'','gi') when (name_en is null) and (int_name is not null) then regexp_replace(int_name,E';|,|-|FIXME',E'','gi') else regexp_replace(name,E';|,|-|FIXME',E'','gi') end as varchar(128)) as name,
cast(case when tunnel in ('yes','true','1') then 'yes' else tunnel end as varchar(3)) as tunnel
from lines
where highway in ('primary', 'primary_link');

create view osm_secondary as 
select 
cast(floor(cast(osm_id as numeric))as bigint) as osm_id, 
osm_timestamp::timestamp as last_modified,
wkb_geometry,
cast (highway as varchar(25)),
cast(case when (name_en is not null) then regexp_replace(name_en,E';|,|-|FIXME',E'','gi') when (name_en is null) and (int_name is not null) then regexp_replace(int_name,E';|,|-|FIXME',E'','gi') else regexp_replace(name,E';|,|-|FIXME',E'','gi') end as varchar(128)) as name,
cast(case when tunnel in ('yes','true','1') then 'yes' else tunnel end as varchar(3)) as tunnel
from lines
where highway in ('secondary', 'secondary_link');

create view osm_tertiary as 
select 
cast(floor(cast(osm_id as numeric))as bigint) as osm_id, 
osm_timestamp::timestamp as last_modified,
wkb_geometry,
cast (highway as varchar(25)),
cast(case when (name_en is not null) then regexp_replace(name_en,E';|,|-|FIXME',E'','gi') when (name_en is null) and (int_name is not null) then regexp_replace(int_name,E';|,|-|FIXME',E'','gi') else regexp_replace(name,E';|,|-|FIXME',E'','gi') end as varchar(128)) as name,
cast(case when tunnel in ('yes','true','1') then 'yes' else tunnel end as varchar(3)) as tunnel
from lines
where highway in ('tertiary', 'residential', 'living_street', 'unclassified', 'tertiary_link', 'residential_link', 'unclassified_link');

create view osm_alley as 
select 
cast(floor(cast(osm_id as numeric))as bigint) as osm_id, 
osm_timestamp::timestamp as last_modified,
wkb_geometry,
cast (highway as varchar(25))
from lines
where highway = 'service';

create view osm_cycle as 
select 
cast(floor(cast(osm_id as numeric))as bigint) as osm_id, 
osm_timestamp::timestamp as last_modified,
wkb_geometry
from lines
where highway in ('bridleway','cycleway') or (highway = 'path' and cycle = 'yes');

create view osm_walkway as 
select 
cast(floor(cast(osm_id as numeric))as bigint) as osm_id, 
osm_timestamp::timestamp as last_modified,
wkb_geometry
from lines
where highway in ('pedestrian','footway','track')  or (highway = 'path' and cycle <> 'yes');

create view osm_steps as 
select 
cast(floor(cast(osm_id as numeric))as bigint) as osm_id, 
osm_timestamp::timestamp as last_modified,
wkb_geometry
from lines
where highway in ('steps');

create view osm_rail as
select 
cast(floor(cast(osm_id as numeric))as bigint) as osm_id, 
osm_timestamp::timestamp as last_modified,
wkb_geometry,
cast (railway as varchar(25)),
cast(case when tunnel in ('yes','true','1') then 'yes' else tunnel end as varchar(3)) as tunnel
from lines
where railway in ('rail', 'light_rail', 'subway', 'monorail');

create view osm_ferry as 
select 
cast(floor(cast(osm_id as numeric))as bigint) as osm_id, 
osm_timestamp::timestamp as last_modified,
wkb_geometry,
cast(case when (name_en is not null) then regexp_replace(name_en,E';|,|-|FIXME',E'','gi') when (name_en is null) and (int_name is not null) then regexp_replace(int_name,E';|,|-|FIXME',E'','gi') else regexp_replace(name,E';|,|-|FIXME',E'','gi') end as varchar(128)) as name
from lines
where route in ('ferry');
