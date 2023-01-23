
USE SYS;

-- ************************ Personel Tablosundan *******************************
/*-------------------------------------------------------------------------
Q1: Isminin 2. harfi e olup diger harflerinde y olan personeli listeleyiniz
---------------------------------------------------------------------------*/
/*-------------------------------------------------------------------------
Q2: Isminde a harfi olmayan personeli listeleyiniz
---------------------------------------------------------------------------*/
/*-------------------------------------------------------------------------
Q3: Maasi 5 haneli olan personeli listeleyiniz
---------------------------------------------------------------------------*/
/*-------------------------------------------------------------------------
Q4: 1. harfi a ve 7. harfi a olan personeli listeleyiniz
---------------------------------------------------------------------------*/
-- ************************ Fen Lisesi Tablosundan *****************************
CREATE TABLE lise (
okul_no CHAR(4) UNIQUE,
isim VARCHAR(50) NOT NULL,
derece DOUBLE,
adres VARCHAR(100),
son_degisiklik_tarihi DATE
);
INSERT INTO lise VALUES ('1001','Fatih Polat',89,'Ankara','2022-12-05');
INSERT INTO lise VALUES ('1002','Efe Torun',85,'Istanbul','2022-12-05');
INSERT INTO lise VALUES ('1003','Esra Turker',95,'Izmir','2022-12-05');
INSERT INTO lise VALUES ('1004','Mustafa Yilmaz',90,'Istanbul','2022-12-05');
INSERT INTO lise VALUES ('1005','Elif Kesen',92,'Berlin','2022-12-05');
INSERT INTO lise VALUES ('1006','Tugay Kala',75,null,'2022-12-05');
INSERT INTO lise VALUES ('1007','Semra Ulusoy',null,null,null);
INSERT INTO lise VALUES ('1008','Ayse Can',89,'Ankara','2022-12-05');
INSERT INTO lise (okul_no,isim,derece,son_degisiklik_tarihi) VALUES ('1009','Mehmet Cil',89,'2022-12-05');
INSERT INTO lise (isim,derece,son_degisiklik_tarihi) VALUES ('Salim Oz',89,'2022-12-05');
INSERT INTO lise (isim,derece,son_degisiklik_tarihi) VALUES ('Suleyman Karaca',45,'2022-12-05');
INSERT INTO lise VALUES ('1010','Ozgur Ali',90,'Istanbul','2022-12-05');
INSERT INTO lise VALUES ('','Yusuf Enes',92,'Berlin','2022-12-05');


-- Q1 : Okul_no ' su 1005'ten buyuk olan ogrencilerin tum bilgilerini listeleyin.
SELECT *
FROM lise
WHERE okul_no> '1005';

-- Q2 : Ismi Elif Kesen olan ogrencinin derecesini listeleyin.
SELECT isim, derece
FROM lise
WHERE isim= 'Elif Kesen';

-- Q3 : Derecesi 90dan buyuk olan ogrencilerin okul_no ve isimlerini listeleyin.
SELECT okul_no, isim
FROM lise
WHERE derece>90;

-- Q4 : Ismi Tugay Kala olan ogrencinin derecesini listeleyin :)

SELECT isim, derece
FROM lise
WHERE isim='Tugay Kala';

-- Q5 : Istanbulda yasayan ogrencilerin isimlerini listeleyin.

SELECT isim, adres
FROM lise
WHERE adres='Istanbul';

/*-------------------------------------------------------------------------
Q1: Isminin 2. harfi e olup diger harflerinde y olan personeli listeleyiniz
---------------------------------------------------------------------------*/
SELECT * 
FROM personel
WHERE isim LIKE '_e%' AND isim like '%y%';

/*-------------------------------------------------------------------------
Q2: Isminde a harfi olmayan personeli listeleyiniz
---------------------------------------------------------------------------*/
SELECT * 
FROM personel
WHERE isim NOT LIKE '%a%' ;

/*-------------------------------------------------------------------------
Q3: Maasi 5 haneli olan personeli listeleyiniz
---------------------------------------------------------------------------*/
SELECT isim, maas
FROM personel
WHERE maas like '_____';

/*-------------------------------------------------------------------------
Q4: 1. harfi a ve 7. harfi a olan personeli listeleyiniz
---------------------------------------------------------------------------*/
SELECT *
FROM personel
WHERE isim like 'a_____a%';

