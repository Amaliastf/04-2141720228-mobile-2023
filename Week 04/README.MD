# Praktikum 1 #
1. ![Screenshoot hello_world](docs/Screenshot(2211).png)

2. Output pada kode program nomor 1 angka 3 2 1 secara horizontal, dengan mendeklarasikan e elemen pada variabel 'list' yaitu 1, 2, 3. Pada kode baris ke-3 dilakukan pemerikasaan apakah panjang list sebanyak 3 dan pada kode baris ke-4 dilakukan pemeriksaan apakah elemen kedua dari list adalah 2. Pada kode print dilakukan untuk mencetak kode diatasnya. Pada baris ke-7 dilakukan pengubahan nilai elemen menjadi 1 dan diakhir kembali dicetak.

3. ![Screenshoot hello_world](docs/Screenshot(2212).png)

# Praktikum 2 #
1. ![Screenshoot hello_world](docs/Screenshot(2213).png)

2. pada kode baris ke-1 digunakan untuk mendefinisikan variabel yang diberi nama 'halogens' dan diinputkan elemen dalam array. Pada kode baris ke-4 dilakukan peyetakan dari variabel 'halogens'.

3. pada variabel bernama names1 diisikan elemen nama dengan add(), dan pada names2 diisikan elemen NIM dengan add() juga, lalu dilakukan pemanggilan insial menguunakan addlAll() untuk names1 dan names2.
![Screenshoot hello_world](docs/Screenshot(2214).png)


# Praktikum 3 #
1. ![Screenshoot hello_world](docs/Screenshot(2215).png)

2. pada langkah 1 menghasilkan output untuk elemen pada variabel gifts dan variabel nobleGases, yang mana setelah elemen diinputkan diawal dilakukan pemanggilan variabel dengan kode print.

3.![Screenshoot hello_world](docs/Screenshot(2216).png)
 Terjadi eror diwal. setelah dibenahi, output yang dihasilkan adalah isian dari elemen gifts dan nobleGases diawal, lalu menampilkan nim dan nama pada elemen variabel mhs1 dan mhs2.
 ![Screenshoot hello_world](docs/Screenshot(2217).png)




# Praktikum 4 #
1. ![Screenshoot hello_world](docs/Screenshot(2219).png)

2. Terjadi eror saat dijalankan, dikarenakan variabel yang dipanggil untuk dicetak yaitu variabel list1, sedangkan nama variabel yang diinputkan diawal adalah list, sehingg perlu adanya penyesuaian.
![Screenshoot hello_world](docs/Screenshot(2221).png)

3. ![Screenshoot hello_world](docs/Screenshot(2222).png)
Terjadi eror saat dijalankan pada 2 variabel ganda yang diinputkan yaitu list1, sehingga perlu dilakukan penyesuaian sebagai berikut:
![Screenshoot hello_world](docs/Screenshot(2225).png)

4. ![Screenshoot hello_world](docs/Screenshot(2224).png)
terjadi eror karena belum terdapat variabel promoActive yang diisikan elemen, setelah diisikan elemen true pada variabel promoActive, barulah kode dapat dijalankan
![Screenshoot hello_world](docs/Screenshot(2227).png)

5. ![Screenshoot hello_world](docs/Screenshot(2229).png) 
Terjadi eror pada awal runtime, dikarenakan belum terdapat variabel login yang telah diinputkan elemen diawal, sehingga perlu ditambahkan variabel login terlebih dahulu dan dberi elemen didalamnya.
![Screenshoot hello_world](docs/Screenshot(2230).png)

6. ![Screenshoot hello_world](docs/Screenshot(2231).png)
![Screenshoot hello_world](docs/Screenshot(2232).png)
pada baris awal terdapat variabel 'listOfInts' yang berisikan array angka, lalu pada variabel 'listOfStrings' terdapat kode for (var i in listOfInts) '#$i' untuk mengisi array pada variabel 'listOfStrings' sesuai dengan nilai pada variabel 'listOfInts'. pada baris ke-75 yaitu 'assert' digunakan untuk menguji apakah elemen kedua dari array 'listOfStrings' sama dengan string '#1'. pada bagian bawa dilakukan pencetakkan isi array dengan 'print' dan variabel 'listOfStrings'.


# Praktikum 5 #
1. ![Screenshoot hello_world](docs/Screenshot(2246).png)

2.  Terjadi eror pada kode diatas, dikarenakan pada kode diatas dimasukkan elemen-elemen dengan tipe data yang berbeda. Sehingga dalam perbaikannya perlu menggunakan Map.
![Screenshoot hello_world](docs/Screenshot(2247).png)

3. ![Screenshoot hello_world](docs/Screenshot(2249).png)
Kode tetap mengeluarkan output sebagaimana pada langkah ke 2, pada langkah ke 3 terdaoat 2 bagian main dan fungsi tukar. Yang mana pada fungsi main menggunakan Map. Sedangkan pada fungsi tukar yang mengambil data tipe int dan mengembalikan nilai int diuraikan ke dalam 2 variabel, yaitu a dan b. Pada fungsi ini dilakukan penukaran posisi pada variabel a dan b, jadi posisinya akan tertukar kala dipanggil, a b menjadi b a. Tetapi pada kode tersebut fungsi tukar() seharusnya menerimam Map sebagai argumen dan bukan Tuple, sehingga perlu adanya perbaikan sebagai berikut:
![Screenshoot hello_world](docs/Screenshot(2250).png)

4. ![Screenshoot hello_world](docs/Screenshot(2251).png)
Terjadi eror, dikarenakan pada variabel 'mahasiswa' dideklarasikan sebagai (String, int) tetapi tidak diinisiliasasi dan tidak memiliki nilai awal.Sehingga perlu diperbaiki menjadi:
![Screenshoot hello_world](docs/Screenshot(2252).png)
![Screenshoot hello_world](docs/Screenshot(2253).png)

5. ![Screenshoot hello_world](docs/Screenshot(2255).png)
![Screenshoot hello_world](docs/Screenshot(2256).png)
    setelah diperbaiki:
    ![Screenshoot hello_world](docs/Screenshot(2256).png)
    ![Screenshoot hello_world](docs/Screenshot(2257).png)


# Tugas #
 1. Silakan selesaikan Praktikum 1 sampai 5, lalu dokumentasikan berupa screenshot hasil pekerjaan Anda beserta penjelasannya!

 
2. Jelaskan yang dimaksud Functions dalam bahasa Dart!

Dalam dart Fungsi merupakan sebuah kumpulan kode yang dapat dieksekusi daat dilakukan pemanggilan. Fungsi sendiri digunakan untuk mengelompokkan kode yang akan digunakan kembali. Sehingga dengen ini memudahkan ketika ingin melakukan pemanggilan kode tanpa harus menulis banyak kode berkali-kali dan hanya memanggil nama fungsinya saja.


3. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!

a. Parameter Posisional : 
merupakan jenis parameter yang nilainya diterima oleh fungsi berdasarkan urutan posisinya saat fungsi dipanggil 
![Screenshoot hello_world](docs/Screenshot(2258).png)

b. Parameter Default :
merupakan jenis parameter yang memiliki nilai default yang akan digunakan apabila nilai tidak diisikan saat memanggil fungsi
![Screenshoot hello_world](docs/Screenshot(2259).png)

c. Parameter Opsional:
merupakan jenis parameter yang dapat diabaikan saat dilakukan pemanggilan fungsi, jenis parameter ini dalam dart terbagi menjadi 2, yaitu:

c.1. Parameter opsional dengan kata kunci : didefinisikan dengan '{}'
![Screenshoot hello_world](docs/Screenshot(2260).png)

c.2. Parameter opsional posisional : didefinisikan dengan '()'
![Screenshoot hello_world](docs/Screenshot(2261).png)

d. Parameter sebagai fungsi:
dart memungkinkan pengguna untuk membuat fungsi menjadi parameter bagi fungsi yang lain.
![Screenshoot hello_world](docs/Screenshot(2262).png)


4. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!
dalam dart fungsi dianggap debagai entitas yang sama seperti tipe data yang lain seperti string atau int.
![Screenshoot hello_world](docs/Screenshot(2263).png)


5. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!
Anonymous Functions merupakan fungsi yang tidak memiliki nama, sebuah fungsi yang dideklarasikan tanpa menggunakan kata kunci. Anonymous Functions sering digunakan untuk membuat fungsi sederhana yang disimpan dalam variabel.
![Screenshoot hello_world](docs/Screenshot(2264).png)


6. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!

Lexical Scope pada dart mengacu pada aturan bagaimana avariabel dan fungsi dapat diakses di dalam sebuah fungsi berdasarkan cara penulisan kode, variabel yang dideklarasikan dalam sebuah fungsi hanya dapat diakses dalam fungsi tersebut. Jika terdapat variabel yang dipanggil diluar fungsi maka akn terjadi eror.
![Screenshoot hello_world](docs/Screenshot(2265).png)

Lexical Closures merupakan sebuah fungsi yang menangkap fungsi lainnya dari luar lingkupnya. Lexical Closures memiliki akses ke variabel Scope bahkan saat kondisi memanggil di tempat lain.
![Screenshoot hello_world](docs/Screenshot(2266).png)


7. Jelaskan dengan contoh cara membuat return multiple value di Functions!

a. Menggunakan List:
Mengembalikan nilai dalam bentuk daftar/list yang memungkinkan kita untuk mengembalikan nilai yang berbeda sebagai elemen dalam list. List merupakan sekumpulan objek yang dapat diubah
![Screenshoot hello_world](docs/Screenshot(2267).png)

b. Menggunakan Map:
Dengan menggunakan Map dapat mengembalikan multiple values yang memiliki beberapa kunci sebagai label untuk tiap nilai yang ingin dikembalikan
![Screenshoot hello_world](docs/Screenshot(2268).png)


8. Kumpulkan berupa link commit repo GitHub pada tautan yang telah disediakan di grup Telegram!












