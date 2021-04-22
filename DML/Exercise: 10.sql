/* Add into the PC table all the PC models from the Product table that are absent from the PC table.

Along with above the inserted models must have the specifications:

1. The code should be equal to the model number plus maximal code value which has been in the PC table before insert operation.

2. Speed, RAM and HD capacities, and CD-speed should be maximal among all available corresponding values in the PC table.

3. The price should be an average among all the PCs which have been in the PC table before insert operation.*/

INSERT INTO PC (code, model, speed, ram, hd, cd, price)
SELECT
(SELECT MAX(code) FROM PC) + model AS code, model,
(SELECT MAX(speed) FROM PC) AS speed,
(SELECT MAX(ram) FROM PC) AS ram,
(SELECT MAX(hd) FROM PC) AS hd, CAST((SELECT MAX(CAST(SUBSTRING(cd, 1, LEN(cd) - 1) AS int)) FROM PC) AS VARCHAR) + 'x' AS cd,
(SELECT AVG(price) FROM PC) AS price
FROM product WHERE type = 'PC' AND model not IN (SELECT model FROM pc)
