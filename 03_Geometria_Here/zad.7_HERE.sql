WITH parks as(
SELECT ST_BUFFER(geom,300) as buffor, type
FROM land_a_19
WHERE type LIKE 'Park %'
),
shops as(
SELECT * 
FROM poi2
WHERE type='Sporting Goods Store'
)
SELECT COUNT(*) 
FROM shops s
JOIN parks p ON ST_WITHIN(s.geom, buffor)