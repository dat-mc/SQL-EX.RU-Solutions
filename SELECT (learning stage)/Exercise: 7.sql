-- Get the models and prices for all commercially available products (of any type) produced by maker B.

SELECT product.model, price FROM product, pc
WHERE product.model = pc.model AND maker = 'B'
UNION
SELECT product.model, price FROM product, laptop
WHERE product.model = laptop.model AND maker = 'B'
UNION
SELECT product.model, price FROM product, printer
WHERE product.model = printer.model AND maker = 'B'
