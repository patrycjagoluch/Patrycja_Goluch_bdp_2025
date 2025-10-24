WITH new_buildings AS (
SELECT b2.polygon_id, ST_DIFFERENCE(b.geom, b2.geom) as roznica
FROM buildings2 b2
JOIN buildings b ON b2.polygon_id = b.polygon_id
WHERE ST_Area(ST_DIFFERENCE(b.geom, b2.geom)) > 0
),
total_buffer AS(
SELECT ST_UNION(ST_BUFFER(roznica,500)) as buffer
FROM new_buildings
),
new_poi AS(
SELECT p2.poi_id, p.poi_id, p2.type, p2.geom
FROM poi2 p2
LEFT JOIN poi p ON p2.poi_id = p.poi_id
WHERE p.poi_id IS NULL
)

SELECT COUNT(*) as obliczone_poi, np.type
FROM new_poi np
JOIN total_buffer tb ON ST_WITHIN(np.geom,tb.buffer)
GROUP BY np.type
