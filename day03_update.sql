/* ====================================== UPDATE ========================================
Tabloda varolan herhangi bir record'a ait verinin degistirilmesi icin kullanilir.
-----Syntax-----
UPDATE table_name
SET field1=''
WHERE condition;
========================================================================================*/
/*--------------------------------------------------------------------------------------
1) Bir firmalar tablosu olusturun icinde id,
isim ve iletisim_isim field'lari olsun. 
Id ve isim'i beraber Primary Key yapin.
---------------------------------------------------------------------------------------*/

CREATE TABLE firmalar (
id INT,
isim VARCHAR (20),
iletisim_isim VARCHAR (20),
CONSTRAINT firmalar_pk PRIMARY KEY (id, isim)

);
/*--------------------------------------------------------------------------------------
2) Icine 3 kayit ekleyin :
(1, 'ACB', 'Ali Can'), 
(2, 'RDB', 'Veli Gul'), 
(3, 'KMN', 'Ayse Gulmez').
---------------------------------------------------------------------------------------*/

INSERT INTO firmalar VALUES
(1, 'ACB', 'Ali Can'), 
(2, 'RDB', 'Veli Gul'), 
(3, 'KMN', 'Ayse Gulmez');

SELECT * FROM firmalar;
DROP TABLE firmalar; 

UPDATE firmalar
SET isim = 'KRM'
WHERE id=3;

-- Iletisim ismi Veli Gul olan firmanin id'sini 4, ismini FDS olarak guncelleyiniz.

-- **********1.yol*********
UPDATE firmalar
SET id= 4
WHERE iletisim_isim='Veli Gul';

UPDATE firmalar
SET isim= 'FDF'
WHERE iletisim_isim='Veli Gul';

-- *********2.yol************

UPDATE firmalar
SET id=4, isim= 'FDS'
WHERE iletisim_isim='Veli Gul';

-- Ismi ACB olan firmanin iletisim ismini 'Osman Can' olarak guncelleyiniz.

UPDATE firmalar
SET iletisim_isim='Osman Can'
WHERE isim='ACB';

-- Iletisim Ismi 'Osman Can olan firmanin iletisim ismini 'Ayse Can' olarak guncelleyiniz.

UPDATE firmalar
SET iletisim_isim='Ayse Can'
WHERE iletisim_isim='Osman Can';



