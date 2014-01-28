/*
geonames_places.sql requires that you load geonames data following the steps at - http://linfiniti.com/2011/03/fun-with-geonames/

wget -c http://download.geonames.org/export/dump/allCountries.zip

unzip allCountries.zip

create schema world;

create table world.geoname (
         geonameid       int,
         name            varchar(200),
         asciiname        varchar(200),
         alternatenames  varchar(8000),
         latitude        float,
         longitude       float,
         fclass  char(1),
         fcode   varchar(10),
         country varchar(2),
         cc2 varchar(60),
         admin1  varchar(20),
         admin2  varchar(80),
         admin3  varchar(20),
         admin4  varchar(20),
         population      bigint,
         elevation       int,
         gtopo30         int,
         timezone varchar(40),
         moddate         date
 );

copy world.geoname (geonameid,name,asciiname,alternatenames,
latitude,longitude,fclass,fcode,country,cc2,
admin1,admin2,admin3,admin4,population,elevation,gtopo30,
timezone,moddate) from '/home/web/allCountries.txt' null as '';

alter table world.geoname add column id serial not null;
CREATE UNIQUE INDEX idx_geoname_id ON world.geoname (id);

CREATE INDEX idx_geoname_population ON world.geoname (population);
CREATE INDEX idx_geoname_fcode ON world.geoname(fcode);
CREATE INDEX idx_geoname_fclass ON world.geoname(fclass);

alter table world.geoname add column the_geom geometry;

update world.geoname set the_geom = st_makepoint(longitude,latitude);

alter table world.geoname add constraint enforce_geotype_the_geom
CHECK (geometrytype(the_geom) = 'POINT'::text OR the_geom IS NULL);

CREATE INDEX idx_geoname_the_geom ON world.geoname USING gist(the_geom);

update world.geoname set the_geom = ST_SETSRID(the_geom,4326);

insert into geometry_columns (f_table_catalog,f_table_schema,f_table_name,f_geometry_column,
coord_dimension,srid,type) values ('','world','geoname','the_geom',2,4326,'POINT');

*/

create view geonames_continent as
select geonameid, cast(fcode as varchar(10)) as fcode, cast(asciiname as varchar(200)) as name, moddate::timestamp as last_modified, the_geom from world.geoname where fcode = 'CONT';

create view geonames_country 
select geonameid, cast(fcode as varchar(10)) as fcode, cast(asciiname as varchar(200)) as name, moddate::timestamp as last_modified, the_geom from world.geoname where fcode = 'CONT'; where fcode = 'PCLI';

create view geonames_state
select geonameid, cast(fcode as varchar(10)) as fcode, cast(asciiname as varchar(200)) as name, moddate::timestamp as last_modified, the_geom from world.geoname where fcode = 'CONT'; where fcode = 'ADM1';

create view geonames_county
select geonameid, cast(fcode as varchar(10)) as fcode, cast(asciiname as varchar(200)) as name, moddate::timestamp as last_modified, the_geom from world.geoname where fcode = 'CONT'; where fcode = 'ADM2';  

create view geonames_capital
select geonameid, cast(fcode as varchar(10)) as fcode, cast(asciiname as varchar(200)) as name, moddate::timestamp as last_modified, the_geom from world.geoname where fcode = 'CONT'; where fcode = 'PPLC';

create view geonames_metropolis
select geonameid, cast(fcode as varchar(10)) as fcode, cast(asciiname as varchar(200)) as name, moddate::timestamp as last_modified, the_geom from world.geoname where fcode = 'CONT'; where (fclass = 'P' and fcode not in ('PPLC')) and population >= 1000000;

create view geonames_large_city
select geonameid, cast(fcode as varchar(10)) as fcode, cast(asciiname as varchar(200)) as name, moddate::timestamp as last_modified, the_geom from world.geoname where fcode = 'CONT'; where (fclass = 'P' and fcode not in ('PPLC')) and population between 100000 and 999999;

create view geonames_city
select geonameid, cast(fcode as varchar(10)) as fcode, cast(asciiname as varchar(200)) as name, moddate::timestamp as last_modified, the_geom from world.geoname where fcode = 'CONT'; where (fclass = 'P' and fcode not in ('PPLC')) and population between 10000 and 99999;

create view geonames_town
select geonameid, cast(fcode as varchar(10)) as fcode, cast(asciiname as varchar(200)) as name, moddate::timestamp as last_modified, the_geom from world.geoname where fcode = 'CONT'; where (fclass = 'P' and fcode not in ('PPLC')) and population between 100 and 9999;
