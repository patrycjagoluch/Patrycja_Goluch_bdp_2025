SELECT b2.polygon_id, ST_DIFFERENCE(b.geom, b2.geom) as roznica
FROM buildings2 b2
JOIN buildings b ON b2.polygon_id = b.polygon_id
WHERE ST_Area(ST_DIFFERENCE(b.geom, b2.geom)) > 0
