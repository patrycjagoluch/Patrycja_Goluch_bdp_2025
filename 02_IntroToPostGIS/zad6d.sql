WITH buildings2 AS (
SELECT name, ST_Perimeter(geometry) as obwód, DENSE_RANK() OVER (ORDER BY ST_Perimeter(geometry) DESC) AS rank
FROM buildings
)
SELECT name, obwód, rank
FROM buildings2
WHERE rank=1 OR rank=2;