SELECT ST_AsText(geometry) as geometria, ST_AREA(geometry) as pole, ST_Perimeter(geometry) as obwód 
FROM buildings
WHERE name='BuildingA'