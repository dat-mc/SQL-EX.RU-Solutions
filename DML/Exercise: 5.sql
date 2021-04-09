--Delete from PC table the computers having minimal hdd size or minimal ram size.

DELETE FROM PC WHERE pc.hd = (SELECT MIN(hd) FROM PC) OR pc.ram = (SELECT MIN(ram) FROM PC)
