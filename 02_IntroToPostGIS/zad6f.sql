WITH new AS (
SELECT ST_Buffer(geometry, 0.5) as buffer
FROM buildings
WHERE name='BuildingB'
),
C_build as (
SELECT geometry
FROM buildings
WHERE name='BuildingC'
)
SELECT ST_Area(ST_Difference(c.geometry, n.buffer)) AS pole
FROM C_build c
CROSS JOIN new n;