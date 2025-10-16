WITH road AS (
	SELECT geometry 
	FROM roads 
	WHERE name='RoadX'
)
SELECT name
FROM buildings b, road r
WHERE ST_Y(ST_CENTROID(b.geometry)) > ST_Y(ST_CENTROID(r.geometry))