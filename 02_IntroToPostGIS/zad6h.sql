SELECT ST_AREA(ST_Difference(b.geometry, ST_GeomFromText('POLYGON((4 7, 6 7, 6 8, 4 8, 4 7))'))) as pole
FROM buildings b
WHERE b.name='BuildingC'