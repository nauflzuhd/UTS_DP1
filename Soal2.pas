program PakStephen;
uses crt;
var 
    p,i,j,jenis,jumlah,harga : integer; //integer karena berupa angka
    total : real; //real karena bisa berupa bilangan desimal
begin// memulai program
    clrscr; //agar tampilan layar bersih
    write('Masukkan jumlah pelanggan : ');readln(p); //menulis Masukkan jumlah pelanggan : , dan untuk menginput berapa banyak pelanggan (p)
    writeln; //baris baru
    i := 1; //menginput nilai awal i, yaitu 1 (untuk looping)
    while i <= p do //untuk looping berapa banyaknya pelanggan sebanyak p(menggunakan while yang dimana jika bernilai benar akan melanjutkan loopingnya)
    begin //while harus menggunakan begin end
        writeln('Pelanggan ke-',i,':');// menulis Pelanggan ke-1 sampai nilai p
        write('Masukkan jumlah jenis sayur yang dibeli : ');readln(jenis); //menulis Masukkan jumlah jenis sayur yang dibeli : , dan untuk menginput berapa banyak jenis sayur yang akan dibeli
        writeln; //baris baru
        j := 1; //nilai awal j, yaitu 1 (untuk looping)
        while j <= jenis do //looping untuk menentukan jenis dan harga sebanyak (jenis)
        begin// while harus menggunakan begin end
            write('Masukkan harga sayur ke-',j,' : ');readln(harga); //menulis Masukkan harga sayur ke- 1 sampai nilai j, dan untuk menginput nilai harga
            write('Masukkan jumlah sayur yang dibeli : ');readln(jumlah); //menulis Masukkan jumlah sayur yang dibeli : , dan untuk menginput nilai jumlah
            total += harga*jumlah; //rumus untuk menentukan total harga pembeli ke-i
            j := j + 1; //menginisialisasi nilai j ditambah 1 agar looping while berjalan sampai bernilai false
        end; //end untuk while j (harga dan jumlah)
        writeln('Total belanja untuk pelanggan ke-',i,': Rp',total:2:2); //menulis Total belanja untuk pelanggan ke-i: Rp nilai total yang didapatkan dari rumus
        total := 0; //menginisialisasi nilai total kembali ke 0 agar total pelanggan ke-1 dan seterusnya tidak digabung
        writeln; //baris baru
        i := i + 1; //menginisialisasi nilai i ditambah 1 agar looping berjalan sampai bernilai false
    end; //end untuk while i (pelanggan)
    readln; //agar program tidak autoclose
end. //akhir dari program
