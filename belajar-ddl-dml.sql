SHOW DATABASES;

CREATE DATABASE sekolah1;

USE sekolah1

CREATE TABLE siswa1(
    -> nis CHAR(10) PRIMARY KEY,
    -> nama VARCHAR(100),
    -> jk CHAR (1),
    -> tempat_lahir VARCHAR(50),
    -> t;anggal_lahir DATE,
    -> alamat TEXT,
    -> kelas VARCHAR(10),
    -> nilai FLOAT,
    -> jomblo BOOLEAN);

    SHOW TABLES;

    desc siswa1;

INSERT INTO siswa1 VALUES(
        -> '12100560',
        -> 'NURSYFA',
        -> 'P',
        -> 'BANDUNG',
        -> '2006-08-31',
        -> 'CIGADUNG',
        -> '11-RPL-2',
        -> '99.99',
        -> '2');
        Query OK, 1 row affected (0.162 sec)

 INSERT INTO siswa1 VALUES(
    -> '12100548',
    -> 'NOVI P.A',
    -> 'P',
    -> 'PURWAKARTA',
    -> '2008-12-31',
    -> 'BABAKAN RAWA',
    -> '11-RPL-2',
    ->  '98.98',
    -> '0');
        Query OK, 1 row affected (0.071 sec)

INSERT INTO siswa1 VALUES(
    -> '12101250',
    -> 'CHINTA',
    -> 'P',
    -> 'SOUL',
    -> '2007',
    -> '12100560',
    -> );
        Query OK, 1 row affected (0.103 sec)
 INSERT INTO siswa1 VALUES(
    -> '12100694',
    -> 'SALSABILA',
    -> 'P',
    -> 'SUMEDANG',
    -> '2006-03-26',
    -> 'CIPAKYU',
    -> '11-RPL-2',
    -> '89.99',
    -> '0');
        Query OK, 1 row affected (0.136 sec)

 INSERT INTO siswa1 VALUES(
    -> '12100018',
    -> 'ADNAN MAULANA',
    -> 'L',
    -> 'BANDUNG',
    -> '2005-05-05',
    -> 'CIGADUNG',
    -> '11-RPL-1',
    -> '81.32',
    -> '1');
        Query OK, 1 row affected, 1 warning (0.098 sec)

    UPDATE siswa1 SET
    -> tanggal_lahir = '2005-05-05',
    -> kelas = '11-RPL-1',
    -> tempat_lahir = 'BANDUNG'
    -> WHERE
    -> nis = '12100018';
        Query OK, 1 row affected (0.144 sec)

    SMariaDB [sekolah1]> DELETE FROM
    -> siswa1
    -> WHERE
    -> nis = '12100018';
        Query OK, 1 row affected (0.074 sec)

        MariaDB [sekolah1]> SELECT * FROM siswa1;





    
    