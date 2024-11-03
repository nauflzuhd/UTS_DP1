program bernadya;
uses crt;
var
    j, i : real; // variabel yang dibutuhkan (real karena angka dan bisa berupa bilangan desimal)
    a : string; // string karena kumpulan karakter
begin
    clrscr; // untuk membersihkan layar
    write('Jarak (KM) : ');readln(j); // menginput jarak dalam KM
    write('Anggotan Premium : ');readln(a); // menginput apakah premium atau tidak (True/False)
    begin
            if j <= 5 then // jika jarak kurang atau sama dengan 5 KM
            i := 20000 + (j*5000) // menginisialisasi hasil menjadi i
            else if j <= 10 then // jika jarak kurang atau sama dengan 10 KM
            i := 20000 + (j*4000) // menginisialisasi hasil menjadi i
            else // jika jarak lebih dari 10 KM
            i := 20000 + (j*3000); // menginisialisasi hasil menjadi i
    end;
    begin
        if i > 100000 then // jika hasil lebih dari 100000 maka
        i := i * 0.90 // hasil diberi diskon 10 persen 
        else // jika hasil tidak lebih dari 100000 maka
        i := i; // hasil tidak diberi diskon apa apa
    end;
    begin
        if (a ='True') or (a ='true') or (a ='TRUE') then // menentukan apakah anggota premium atau bukan
        i := i * 0.95 // jika anggota premium maka diberi tambahan diskon 5 persen
        else // jika bukan anggota premium
        i := i; // tidak diberi tambahan diskon
    end;
    write('Total akhir : Rp',i:2:0); // menunjukkan total akhir yang harus dibayar
    readln; // agar program tidak autoclose
end. 
