program polaX;
uses crt;
var
    i, j, n : integer; // variabel yang dibutuhkan (integer karena berupa angka)
begin //memulai program
    clrscr; // agar tampilan layar menjadi bersih
    write('Masukkan angka ganjil : ');readln(n); //menulis Masukkan angka ganjil, dan untuk menginput nilai n
    if (n mod 2 = 0) then // untuk mengecek ganjil atau tidak
    write ('angka tidak valid, harus angka ganjil') // Menulis 'angka tidak valid, harus angka ganjil' jika menginput angka genap
    else // jika angka ganjil
    begin //memulai else
        for i := 1 to n do // untuk memasukkan baris
            begin //memulai for i
                for j := 1 to n do // untuk memasukkan kolom
                    begin //memulai looping j
                        if (i = j) or (i + j = n + 1) then // untuk menentukan diagonal utama dan sekunder
                        write('*') // jika  if true maka menulis tanda (*)
                        else // jika nilai i tidak sama dengan j atau i + j tidak sama dengan n + 1
                        write(' '); // menulis spasi
                    end; //akhir looping j (jika nilai j masih berlanjut maka looping masih berlanjut)
                writeln; // baris baru
            end; //akhir looping i (jika nilai i masih berlanjut maka looping masih berlanjut)
    end; //akhir else
end. //akhir program//ketik kode jawaban noo 3 kamu disini
