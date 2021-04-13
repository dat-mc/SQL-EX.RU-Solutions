-- Find the makers producing PCs but not laptops.

SELECT DISTINCT maker FROM product
WHERE type = 'PC' AND maker NOT IN 
(SELECT maker FROM product WHERE type = 'laptop')
