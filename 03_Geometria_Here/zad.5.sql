WITH brak_lukow AS (
SELECT *
FROM obiekty
WHERE ST_HasArc(geom)= false
),
buff AS(
SELECT ST_BUFFER(geom,5) as bufor
FROM brak_lukow
)
SELECT ST_AREA(bufor) as pole
FROM buff