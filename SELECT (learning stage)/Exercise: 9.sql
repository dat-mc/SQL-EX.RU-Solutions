-- Find the makers of PCs with a processor speed of 450 MHz or more. Result set: maker.

SELECT DISTINCT maker FROM product
INNER JOIN PC 
ON product.model = PC.model
WHERE PC.speed >= 450
