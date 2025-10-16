SELECT ST_DISTANCE(b.geometry,p.geometry)
FROM buildings b, poi p
WHERE b.name='BuildingB' AND p.name='K';