-- Find out the average speed of the PCs produced by maker A.

SELECT AVG(speed) AS Avg_speed FROM PC
INNER JOIN Product
ON Product.model = PC.model
WHERE Product.maker = 'A'
