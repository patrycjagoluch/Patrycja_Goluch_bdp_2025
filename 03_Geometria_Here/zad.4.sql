INSERT INTO obiekty(geom, nazwa)
SELECT ST_COLLECT(ARRAY[o3.geom, o4.geom]), 'obiekt7'
FROM obiekty o3
JOIN obiekty o4 ON o3.nazwa='obiekt3' AND o4.nazwa='obiekt4'