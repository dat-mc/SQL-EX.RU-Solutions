--Delete from the Laptop table all the laptops of those makers who don't produce printers.

DELETE FROM laptop WHERE model NOT IN (SELECT model FROM Product WHERE MAKER IN (SELECT maker FROM product WHERE type = 'printer'))
