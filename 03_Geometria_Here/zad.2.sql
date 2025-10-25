WITH line AS (
SELECT ST_SHORTESTLINE(o3.geom,o4.geom) as short_line
FROM obiekty o3
JOIN obiekty o4 ON o3.nazwa ='obiekt3' AND o4.nazwa='obiekt4'
),
buff AS (
SELECT ST_BUFFER(short_line,5) as bufor
FROM line
) 
SELECT ST_AREA(bufor)
FROM buff