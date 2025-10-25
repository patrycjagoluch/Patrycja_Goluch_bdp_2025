CREATE EXTENSION  postgis;

CREATE TABLE obiekty(
id  SERIAL PRIMARY KEY,
nazwa TEXT,
geom geometry
);

INSERT INTO obiekty(geom, nazwa) VALUES
(ST_Collect(ARRAY[ST_MakeLine(ST_MakePoint(0,1),ST_MakePoint(1, 1)),
ST_LineToCurve(ST_GeomFromText('LINESTRING(1 1, 2 0, 3 1)')),
ST_LineToCurve(ST_GeomFromText('LINESTRING(3 1, 4 2, 5 1)')),
ST_MakeLine(ST_MakePoint(5,1),ST_MakePoint(6, 1))
]),'obiekt1'),
(ST_Collect(ARRAY[ST_MakeLine(ST_MakePoint(10,6), ST_MakePoint(14,6)),
ST_LineToCurve(ST_GeomFromText('LINESTRING(14 6, 16 4, 14 2)')),
ST_LineToCurve(ST_GeomFromText('LINESTRING(14 2, 12 0, 10 2)')),
ST_MakeLine(ST_MakePoint(10,2), ST_MakePoint(10,6)),
ST_Buffer(ST_MakePoint(12,2), 1)]),'obiekt2'),
(ST_Collect(ARRAY[ST_MakeLine(ST_MakePoint(7,15),ST_MakePoint(10,17)),
ST_MakeLine(ST_MakePoint(10,17),ST_MakePoint(12, 13)),
ST_MakeLine(ST_MakePoint(12,13),ST_MakePoint(7,15))]),'obiekt3'),
(ST_Collect(ARRAY[ST_MakeLine(ST_MakePoint(20,20),ST_MakePoint(25, 25)),
ST_MakeLine(ST_MakePoint(25,25),ST_MakePoint(27, 24)),
ST_MakeLine(ST_MakePoint(27,24),ST_MakePoint(25, 22)),
ST_MakeLine(ST_MakePoint(25,22),ST_MakePoint(26, 21)),
ST_MakeLine(ST_MakePoint(26,21),ST_MakePoint(22, 19)),
ST_MakeLine(ST_MakePoint(22,19),ST_MakePoint(20.5, 19.5))]),'obiekt4'),
(ST_Collect(ST_MakePoint(30,30,59),ST_MakePoint(38,32,234)), 'obiekt5'),
(ST_Collect(ST_MakeLine(ST_MakePoint(1,1),ST_MakePoint(3,2)),
ST_MakePoint(4,2)), 'obiekt6');
