# Praktikum 13

Amalia Salsa Lutfiana
3F/04/2141720228

**Soal 3**

1. Jelaskan fungsi keyword yield* pada kode tersebut!

Kode yield sendiri berfungsi untuk menghasilkan nilai dari suatu stream. yang mana mada kode diatas berfungsi untuk menggabungkan hasil dari suatu stream ke dalam stream yang tengah didefinisikan untuk menghasilkan sebuah nilai.

2. Apa maksud isi perintah kode tersebut?

- yield* = digunakan untuk menghasilkan nilai dari suatu stream
- Stream.periodic = menghasilkan suatu stream yang mengeluarkan nilai pada waktu tertentu
- (int t) { = memberikan logika untuk menghasilkan nilai
- colors[index] = nilai yang dihasilkan pada setiap iterasi, dan nilai ini kemudian di-"yield" ke stream utama


**Soal 4**

Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

![gif steam_nama](images/soal4.gif)


**Soal 5**

Jelaskan perbedaan menggunakan listen dan await for (langkah 9) !

Pada kode tersebut, listen diguanakan untuk menangkap perubahan pada suatu stream. listen sendiri merupakan metode dari Stream untuk mendaftarkan fungsi callback yang dipanggil setiap kali ada data yang dikirimkan melalui stream.

Sedangkan await for digunakan untuk mengonsumsi suatu stream secara langsung untuk menghasilkan sebuah nilai dengan menunggu satu per satu.

