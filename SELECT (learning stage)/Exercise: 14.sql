-- For the ships in the Ships table that have at least 10 guns, get the class, name, and country.

SELECT Ships.class, name, Classes.country FROM Ships
INNER JOIN Classes
ON Classes.class = Ships.class
WHERE Classes.numGuns >= 10
