-- Maker A has passed manufacture of printers to maker Z. Perform necessary changes.

UPDATE Product SET maker = 'Z' WHERE type = 'Printer' and maker = 'A'
