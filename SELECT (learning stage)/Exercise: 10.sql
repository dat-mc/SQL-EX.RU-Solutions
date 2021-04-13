-- Find the printer models having the highest price. Result set: model, price.

SELECT model, price 
FROM Printer pr,
(SELECT MAX(price) AS maxprice FROM Printer) AS MP 
WHERE price = MP.maxprice
