program TokoIKLC;
uses crt;
var
    pecahan : array [1..11] of longint = (100000,75000,50000,20000,10000,5000,2000,1000,500,200,100); //menggunakan array longint karena sudah melewati batas nilai integer
    jumlah : array [1..11] of longint; //menggunakan array longint karena sudah melewati batas nilai integer
    uang, harga, kembalian, i, a : longint; //menggunakan array longint karena sudah melewati batas nilai integer
begin //untuk memulai program
    clrscr; //agar tampilan layar bersih
    readln(kembalian); //untuk menginput nilai kembalian
    a := 0; //menginisialisasi nilai 0 ke a (digunakan untuk menentukan jumlah total pecahan nanti)
    for i := 1 to 11 do // memulai looping i dari 1 sampai 11 (sesuai dengan array)
    jumlah[i] := 0; //menginisialisasi nilai 0 ke jumlah dari 1 sampai 11
    for i := 1 to 11 do //memulai looping i dari 1 sampai 11 (sesuai dengan array)
    begin //menggunakan begin end karena terdapat lebih dari satu line di dalam looping
        if kembalian >= pecahan[i] then //jika kembalian bernilai lebih dari pecahan
        begin //menggunakan begin end karena terdapat lebih dari satu line di dalam if
            jumlah[i] := kembalian div pecahan[i]; //menginisialisasi hasil rumus ke jumlah
            kembalian := kembalian mod pecahan[i]; //menginisialisasi hasil rumus kembalian 
            a := a + jumlah[i]; //menginisialisasi hasil rumus ke a;
        end; //akhir dari if
    end; //akhir dari looping i
    writeln(a); //total pecahan kembalian yang digunakan
    readln;
end. //akhir program

{contoh dari line 13 sampai line 23
    misalkan kita mempunyai kembalian bernilai 30000,
    if 30000 >= 20000 then
    0 := 30000 div 20000 (hasilnya adalah 1)
        maka nilai 0(jumlah[4]) menjadi 1
    30000 := 30000 mod 20000 (hasilnya adalah 10000)
        maka nilai 30000(kembalian) menjadi 10000
    0 := 0 + 1 (hasilnya adalah 1)
        maka nilai 0(a) menjadi 1

    looping (sekarang kembalian  bernilai 10000)

    if 10000 >= 10000 then
    0 := 10000 div 10000 (hasilnya adalah 1)
        maka nilai 0(jumlah[5]) menjadi 1
    10000 := 10000 mod 10000 (hasilnya adalah 0)
        maka nilai 10000(kembalian) menjadi 0
    1 := 1 + 1 (hasilnya adalah 2)
        maka nilai 1(a) menjadi 2

    looping berakhir

    output 2}
