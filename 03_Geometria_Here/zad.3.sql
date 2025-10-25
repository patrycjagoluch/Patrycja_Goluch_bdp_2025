UPDATE obiekty o
SET geom = ST_MAKEPOLYGON(ST_ADDPOINT(o.geom, ST_STARTPOINT(o.geom)))
WHERE nazwa = 'obiekt4' 

-- warunek - musi byc zamknietymi linestringami. dodaje pierwszy punkt na koniec linii i robi poligon