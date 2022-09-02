SELECT * FROM `siswa`
WHERE tempat_lahir = 'Bandung' OR tempat_lahir = 'ciamis';
WHERE tempat_lahir = 'Bandung' OR jk = 'L';
WHERE tempat_lahir = 'Bandung' OR jk = 'L' OR alamat = 'subang';
WHERE tempat_lahir = 'Bandung' AND jk = 'L';
WHERE alamat = 'subang' AND jk = 'L';
WHERE tempat_lahir  = 'subang' ORDER BY;
WHERE tempat_lahir  = 'subang' ORDER BY nilai DESC;
WHERE tempat_lahir  = 'subang' ORDER BY nilai ASC;
WHERE tempat_lahir  = 'Bandung' ORDER BY nilai ASC;
WHERE tempat_lahir  = 'Bandung' ORDER BY nama DESC;
WHERE tempat_lahir  = 'Bandung' ORDER BY nama ASC;
SELECT * FROM `siswa` ORDER BY tanggal_lahir DESC;
WHERE nama LIKE 'A%';
WHERE nama LIKE '%O';
WHERE nama LIKE '%A';
WHERE nama LIKE '%AI%';
WHERE nama LIKE '%PUT%';
WHERE alamat LIKE 'C%';
WHERE alamat LIKE '%NG';
SELECT tempat_lahir FROM `siswa` GROUP BY tempat_lahir ;
WHERE nilai BETWEEN 60 AND 80;
WHERE tanggal_lahir BETWEEN '2005-03-01' AND '2005-06-30';
WHERE nama BETWEEN 'M' AND 'T';
SELECT nama, kelas, nilai AS nilai_lebih_KM FROM `siswa`
WHERE NILAI >= 78;
SELECT nama, kelas, alamat, nilai AS nilai_lebih_KKM FROM `siswa`
WHERE tempat_lahir = 'subang' AND nilai >= 78 ORDER BY nilai DESC;
SELECT nama, kelas, jk, nilai FROM `siswa`
WHERE jk = 'L' AND nilai BETWEEN 50 AND 80 ORDER by nilaI DESC;
SELECT tempat_lahir, COUNT(nis) AS jumlah_orang FROM siswa
GROUP BY tempat_lahir;
SELECT tempat_lahir, COUNT(tempat_lahir) AS jumlah_orang FROM siswa
GROUP BY tempat_lahir;
SELECT jk, MAX(jk) AS nilai_terendah FROM siswa
GROUP BY jk;
SELECT jk, 
    AVG (nilai) AS rerata, 
    MAX(nilai) AS nilai_tertinggi,
    MIN(nilai) AS nilai_terendah,
    SUM(nilai) AS jumlah_nilai 
FROM siswa GROUP BY jk;
