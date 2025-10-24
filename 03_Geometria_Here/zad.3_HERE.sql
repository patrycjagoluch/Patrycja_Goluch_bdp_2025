CREATE TABLE streets_reprojected AS
SELECT * FROM streets19;

ALTER TABLE streets_reprojected
RENAME COLUMN geom to geom_old;

ALTER TABLE streets_reprojected
ADD COLUMN geom geometry(MultiLineString, 31467);

UPDATE streets_reprojected
SET geom = ST_Transform(geom_old, 31467);
