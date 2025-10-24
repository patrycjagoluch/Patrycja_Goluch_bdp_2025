CREATE TABLE T2019_KAR_BRIDGES AS(
SELECT ST_INTERSECTION(r.geom, w.geom) AS geom
FROM water_lines19 w
JOIN railways19 r ON ST_INTERSECTS(r.geom, w.geom)
)