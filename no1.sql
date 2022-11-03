SET SERVEROUTPUT ON
CREATE OR REPLACE PROCEDURE konversiF (celcius number) AS --membuat procedure untuk meng-konversi celcius ke fahrenheit
Fahrenheit NUMBER (5); --variable tampung untuk nilai fahrenheit
BEGIN
Fahrenheit :=9/5*celcius+32; --perhitungan konversi celcius ke fahrenheit
dbms_output.put_line('fahrenheit :'||' '||fahrenheit); --menampilkan hasil fahrenheit
END;

CREATE OR REPLACE PROCEDURE konversiR (celcius number) AS --membuat procedure untuk meng-konversi celcius ke reamur
Reamur NUMBER (5); --variable tampung untuk nilai reamur
BEGIN
Reamur :=4/5 *celcius; --perhitungan konversi celcius ke reamur
dbms_output.put_line('Reamur :'||' '||Reamur); --menampilkan hasil reamur
END;

CREATE OR REPLACE PROCEDURE konversiK (celcius number) AS --membuat procedure untuk meng-konversi celcius ke kelvin
Kelvin NUMBER (5); --variable tampung untuk nilai kelvin
BEGIN
Kelvin :=273 + celcius; --perhitungan konversi celcius ke kelvin
dbms_output.put_line('Kelvin :'||' '||Kelvin); --menampilkan hasil kelvin
END;

EXECUTE KonversiF(32); --memanggil dan menjalankan prosedure konversi celcius ke fahrenheit
EXECUTE KonversiR(32); --memanggil dan menjalankan prosedure konversi celcius ke reamur
EXECUTE KonversiK(32); --memanggil dan menjalankan prosedure konversi celcius ke kelvin

 



