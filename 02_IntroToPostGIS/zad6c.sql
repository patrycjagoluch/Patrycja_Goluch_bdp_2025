SELECT name, ST_AREA(geometry) as pole
FROM buildings
ORDER BY name;