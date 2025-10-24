WITH lines as (
SELECT ST_MAKELINE(ARRAY(SELECT geom FROM input_points ORDER BY id)) as geom_line
FROM input_points i
),
buff as(
SELECT ST_BUFFER(geom_line, 200) as bufor
FROM lines
),
trans as (
SELECT ST_TRANSFORM(geom, 31467) AS geom
FROM street_node19
)
SELECT *
FROM trans t
JOIN buff b ON ST_WITHIN(t.geom,b.bufor)
