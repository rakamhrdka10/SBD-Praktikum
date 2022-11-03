SET SERVEROUTPUT ON
CREATE OR REPLACE PROCEDURE pola1 AS --membuat procedure pola pertama
    i NUMBER(5); --variabel tampung untuk nilai baris
    j NUMBER(5); --variabel tampung untuk nilai kolom
BEGIN
    FOR i in 0..9 LOOP --perulangan untuk nilai baris dari 0 sampai 9
      FOR j in 0..9 LOOP --perulangan untuk nilai kolom dari 0 sampai 9
        IF (i=j OR (i+j)=9) THEN --pengkondisian saat baris = kolom atau baris + kolom = 9
            DBMS_OUTPUT.PUT(' X'); --menampilkan x apabila kondisi terpenuhi
            ELSE 
            DBMS_OUTPUT.PUT(' *');  --menampilkan * apabila kondisi belum terpenuhi
        END IF;
      END LOOP;
      DBMS_OUTPUT.PUT_LINE('');
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('');
END;



CREATE OR REPLACE PROCEDURE pola2 AS --membuat procedure pola kedua
    i NUMBER(5); --variabel tampung untuk nilai baris
    j NUMBER(5); --variabel tampung untuk nilai kolom
BEGIN
    FOR i in 1..10 LOOP --perulangan untuk nilai baris dari 0 sampai 10
      FOR j in 1..10 LOOP --perulangan untuk nilai kolom dari 0 sampai 10
        IF (i <= j) THEN --pengkondisian saat nilai baris <= j akan dijalankan
            IF (i*j < 100) THEN --pengkondisian saat nilai baris dikali kolonm lebih kecil dari 100 akan dijalankan
                DBMS_OUTPUT.PUT(TO_CHAR(i * j, '00'));  --menampilkan baris dikali kolom dengan format dua digit 
            ELSE 
                DBMS_OUTPUT.PUT(TO_CHAR(i * i, '000')); --menampilkan baris dikali kolom dengan format tiga digit 
            END IF;
        END IF;
      END LOOP;
      DBMS_OUTPUT.PUT_LINE(' ');
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(' ');
END;



CREATE OR REPLACE PROCEDURE pola3 AS --membuat procedure untuk  pola ketiga
    i NUMBER(5); --variabel tampung untuk nilai baris
    j NUMBER(5); --variabel tampung untuk nilai kolom
BEGIN
    FOR i in 1..10 LOOP --perulangan untuk nilai baris dari 1 sampai 10
      FOR j in 1..10 LOOP --perulangan untuk nilai kolom dari 1 sampai 10
        IF (i>=j) THEN --pengkondisian saat nilai baris >= j akan dijalankan
            IF (i * j MOD 2 <> 0) THEN --pengkondisian dimana jika i*j mod 2 tidak sama dengan 0 maka akan dijalankan
            DBMS_OUTPUT.PUT(' 1'); --menampilkan angka 1 jika if terpenuhi
            ELSE 
            DBMS_OUTPUT.PUT(' 0'); --menampilkan angka 0 jika kondisi tidak terpenuhi
            END IF;
        END IF;
      END LOOP;
      DBMS_OUTPUT.PUT_LINE('');
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('');
END;


EXECUTE pola1;  --memanggil dan menjalankan prosedur untuk pola pertama
EXECUTE pola2; --memanggil dan menjalankan prosedur untuk pola kedua
EXECUTE pola3; --memanggil dan menjalankan prosedur untuk pola ketiga