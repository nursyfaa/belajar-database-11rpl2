//1
 CREATE Database apotek_nursifa
//2
CREATE TABLE `apotek_nursifa`.`tb_obat` (`kode_obat` VARCHAR(25) NOT NULL , `nama_obat` VARCHAR(50) NOT NULL , `jenis` VARCHAR(50) NOT NULL , `satuan` VARCHAR(50) NOT NULL , `stok` INT(20) NOT NULL , `harga_beli` INT(20) NOT NULL , `harga_jual` INT(20) NOT NULL , PRIMARY KEY (`kode_obat`)) ENGINE = InnoDB;  
//3
    INSERT INTO tb_obat VALUES ("K001", "Allerin 120 cc", "Obat Terbatas", "Botol", 50, 20000, 22000);
    INSERT INTO tb_obat VALUES ("K002", "Becombion 110 ml", "Obat Bebas", "Botol", 10, 15000, 16000); 
    INSERT INTO tb_obat VALUES ("K003", "Becombion 60 ml", "Obat Bebas", "Botol", 5, 8000, 9000);
    INSERT INTO tb_obat VALUES ("K004", "Betadine Vag Plus", "Obat Bebas", "Botol", 12, 12000, 13000);
    INSERT INTO tb_obat VALUES ("K005", "Komiks", "Obat Bebas", "Lembar", 50, 4500, 5000);
    INSERT INTO tb_obat VALUES ("K006", "Diazepam", "Obat Keras", "tablet", 4, 55000, 60000);
    INSERT INTO tb_obat VALUES ("K007", "CTM", "Obat Bebas", "tablet", 3, 70000, 75000);
    INSERT INTO tb_obat VALUES ("K008", "Amoxicillin", "Obat Terbatas", "tablet", 74, 975, 1100);
    INSERT INTO tb_obat VALUES ("K009", "Antimo", "Obat Bebas", "tablet", 2, 5100, 6000);
    INSERT INTO tb_obat VALUES ("K0010", "Parasetamol", "Obat Bebas", "Strips", 100, 3000, 4000);
//4
    SELECT * FROM tb_obat;
//5
    SELECT * FROM tb_obat
    WHERE jenis = 'Obat Terbatas';
//6
    SELECT * FROM tb_obat
    WHERE stok > 50 ORDER BY stok DESC;
//7
    SELECT * FROM tb_obat
    WHERE nama_obat LIKE '%Becombion%';
//8
    SELECT COUNT(jenis='Obat Bebas') AS jenis_obat_bebas FROM tb_obat;
//9
    UPDATE tb_obat set stok = 10
    WHERE nama_obat ='CTM';
//10  
    SELECT * FROM `tb_obat` 
    WHERE jenis = 'Obat Bebas' AND satuan = 'Botol';
//11
    SELECT AVG(harga_beli) AS rata_rata FROM tb_obat
    WHERE jenis = 'Obat Terbatas'; 
//12
    INSERT INTO tb_obat VALUES("K011", "Paramex", "Obat Bebas", "Lembar", 14, 4000, 5000);
//13
    SELECT * 'tb_obat'; WHERE 'kode_obat' = 'K011';
//14
    SELECT jenis, SUM(stok) AS Stok_total FROM tb_obat GROUP BY jenis;
//15
    DELETE FROM tb_obat WHERE kode_obat = 'K005';
    SELECT * FROM 'tb_obat';
//16
    SELECT * FROM 'tb_obat' WHERE nama_obat LIKE 'A%';
//17
   SELECT satuan FROM tb_obat GROUP BY satuan;
//18
   SELECT * FROM tb_obat WHERE harga_beli BETWEEN 10000 AND 25000;
//19
   ALTR TABLE tb_obat RENAME to tbl_obat;
//20
   SELECT * FROM 'tbl_obat' WHERE nama_obat LIKE '%mo%' AND stok >= 10;
