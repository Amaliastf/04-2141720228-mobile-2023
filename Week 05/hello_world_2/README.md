Amalia Salsa Lutfiana
3F/04/2141720228

Runtime awal :
![Screenshot hello_world](images/01.png)

# Praktikum 1#

 Langkah 1:
 Buka VS Code, lalu tekan tombol Ctrl + Shift + P maka akan tampil Command Palette, lalu ketik Flutter. Pilih New Application Project.
  ![Screenshot hello_world](images/Screenshot(2311).png)
 ![Screenshot hello_world](images/Screenshot(2312).png)

Langkah 2 :
Kemudian buat folder sesuai style laporan praktikum yang Anda pilih. Disarankan pada folder dokumen atau desktop atau alamat folder lain yang tidak terlalu dalam atau panjang. Lalu pilih Select a folder to create the project in.
![Screenshot hello_world](images/Screenshot(2313).png)

Langkah 3 :
Buat nama project flutter hello_world seperti berikut, lalu tekan Enter. Tunggu hingga proses pembuatan project baru selesai.

Langkah 4 :
Jika sudah selesai proses pembuatan project baru, pastikan tampilan seperti berikut. Pesan akan tampil berupa "Your Flutter Project is ready!" artinya Anda telah berhasil membuat project Flutter baru.
![Screenshot hello_world](images/Screenshot(2310).png)

# Praktikum 2 #

Langkah 1 :
Login ke akun GitHub Anda, lalu buat repository baru dengan nama "flutter-fundamental-part1"
![Screenshot hello_world](images/Screenshot(2314).png)

Langkah 2 :
Lalu klik tombol "Create repository" lalu akan tampil seperti gambar berikut.
![Screenshot hello_world](images/Screenshot(2315).png)

Langkah 3 :
Kembali ke VS code, project flutter hello_world, buka terminal pada menu Terminal > New Terminal. Lalu ketik perintah berikut untuk inisialisasi git pada project Anda.
![Screenshot hello_world](images/Screenshot(2316).png)

Langkah 4 :
Pilih menu Source Control di bagian kiri, lalu lakukan stages (+) pada file .gitignore untuk mengunggah file pertama ke repository GitHub.

Langkah 5 :
Beri pesan commit "tambah gitignore" lalu klik Commit (✔)
![Screenshot hello_world](images/Screenshot(2317).png)

Langkah 6 :
Lakukan push dengan klik bagian menu titik tiga > Push

Lanngkah 7 :
Di pojok kanan bawah akan tampil seperti gambar berikut. Klik "Add Remote"
![Screenshot hello_world](images/Screenshot(2318).png)

Langkah 8 :
Salin tautan repository Anda dari browser ke bagian ini, lalu klik Add remote
![Screenshot hello_world](images/Screenshot(2319).png)
![Screenshot hello_world](images/Screenshot(2320).png)

Langkah 9 :
Lakukan hal yang sama pada file README.md mulai dari Langkah 4. Setelah berhasil melakukan push, masukkan username GitHub Anda dan password berupa token yang telah dibuat (pengganti password konvensional ketika Anda login di browser GitHub). Reload halaman repository GitHub Anda, maka akan tampil hasil push kedua file tersebut seperti gambar berikut.

Langkah 10 :
Lakukan push juga untuk semua file lainnya dengan pilih Stage All Changes. Beri pesan commit "project hello_world". Maka akan tampil di repository GitHub Anda seperti berikut.

Langkah 11 :
Kembali ke VS Code, ubah platform di pojok kanan bawah ke emulator atau device atau bisa juga menggunakan browser Chrome. Lalu coba running project hello_world dengan tekan F5 atau Run > Start Debugging. Tunggu proses kompilasi hingga selesai, maka aplikasi flutter pertama Anda akan tampil seperti berikut.
![Screenshot hello_world](images/Screenshot(2324).png)

![gif hello_world](images/ezgif.com-video-to-gif.gif)


Langkah 12 :
Silakan screenshot seperti pada Langkah 11, namun teks yang ditampilkan dalam aplikasi berupa nama lengkap Anda. Simpan file screenshot dengan nama 01.png pada folder images (buat folder baru jika belum ada) di project hello_world Anda. Lalu ubah isi README.md seperti berikut, sehingga tampil hasil screenshot pada file README.md. Kemudian push ke repository Anda.
- Terdapat pada file README.MD

# Praktikum 3 #

 Langkah 1 : Text Widget
 Buat folder baru basic_widgets di dalam folder lib. Kemudian buat file baru di dalam basic_widgets dengan nama text_widget.dart. Ketik atau salin kode program berikut ke project hello_world Anda pada file text_widget.dart.
 ![Screenshot hello_world](images/Screenshot(2325).png)

 Lakukan import file text_widget.dart ke main.dart, lalu ganti bagian text widget dengan kode di atas. Maka hasilnya seperti gambar berikut. Screenshot hasil milik Anda, lalu dibuat laporan pada file README.md.
![Screenshot hello_world](images/Screenshot(2326).png)
![Screenshot hello_world](images/Screenshot(2327).png)

Langkah 2 : Text Widget
Buat sebuah file image_widget.dart di dalam folder basic_widgets dengan isi kode berikut.
 ![Screenshot hello_world](images/Screenshot(2329).png)

 Lakukan penyesuaian asset pada file pubspec.yaml dan tambahkan file logo Anda di folder assets project hello_world.
 ![Screenshot hello_world](images/Screenshot(2331).png)

 Jangan lupa sesuaikan kode dan import di file main.dart kemudian akan tampil gambar seperti berikut.
![Screenshot hello_world](images/Screenshot(2337).png)
![Screenshot hello_world](images/Screenshot(2336).png)
![Screenshot hello_world](images/Screenshot(2335).png)

![gif hello_world](images/prak3_logo.gif)


# Praktikum 4 #

Langkah 1: Cupertino Button dan Loading Bar
Buat file di basic_widgets > loading_cupertino.dart. Import stateless widget dari material dan cupertino. Lalu isi kode di dalam method Widget build adalah sebagai berikut.
![Screenshot hello_world](images/Screenshot(2340).png)

Langkah 2: Floating Action Button (FAB)
Button widget terdapat beberapa macam pada flutter yaitu ButtonBar, DropdownButton, TextButton, FloatingActionButton, IconButton, OutlineButton, PopupMenuButton, dan ElevatedButton.

Buat file di basic_widgets > fab_widget.dart. Import stateless widget dari material. Lalu isi kode di dalam method Widget build adalah sebagai berikut.
![Screenshot hello_world](images/Screenshot(2341).png)

Langkah 3: Scaffold Widget
Scaffold widget digunakan untuk mengatur tata letak sesuai dengan material design.

Ubah isi kode main.dart seperti berikut.
![Screenshot hello_world](images/Screenshot(2348).png)
![Screenshot hello_world](images/Screenshot(2344).png)
![Screenshot hello_world](images/Screenshot(2345).png)
![Screenshot hello_world](images/Screenshot(2346).png)
![Screenshot hello_world](images/Screenshot(2347).png)

![gif hello_world](images/prak4_increment.gif)

Langkah 4: Dialog Widget
Dialog widget pada flutter memiliki dua jenis dialog yaitu AlertDialog dan SimpleDialog.

Ubah isi kode main.dart seperti berikut.
![Screenshot hello_world](images/Screenshot(2351).png)
![Screenshot hello_world](images/Screenshot(2352).png)
![Screenshot hello_world](images/Screenshot(2353).png)
![Screenshot hello_world](images/Screenshot(2354).png)
![Screenshot hello_world](images/Screenshot(2349).png)
![Screenshot hello_world](images/Screenshot(2350).png)

![gif hello_world](images/prak4_text.gif)

Langkah 5: Input dan Selection Widget
Flutter menyediakan widget yang dapat menerima input dari pengguna aplikasi yaitu antara lain Checkbox, Date and Time Pickers, Radio Button, Slider, Switch, TextField.

Contoh penggunaan TextField widget adalah sebagai berikut:
![Screenshot hello_world](images/Screenshot(2357).png)
![Screenshot hello_world](images/Screenshot(2355).png)
![Screenshot hello_world](images/Screenshot(2356).png)

![gif hello_world](images/prak4_nama.gif)

Langkah 6: Date and Time Pickers
Date and Time Pickers termasuk pada kategori input dan selection widget, berikut adalah contoh penggunaan Date and Time Pickers.
![Screenshot hello_world](images/Screenshot(2361).png)
![Screenshot hello_world](images/Screenshot(2362).png)
![Screenshot hello_world](images/Screenshot(2363).png)
![Screenshot hello_world](images/Screenshot(2364).png)
![Screenshot hello_world](images/Screenshot(2358).png)
![Screenshot hello_world](images/Screenshot(2359).png)
![Screenshot hello_world](images/Screenshot(2360).png)

![gif hello_world](images/prak4_tanggal.gif)


# Tugas #
 2. -prak1-4-
 3. ![Screenshot hello_world](images/Screenshot(2383).png)
    ![Screenshot hello_world](images/Screenshot(2384).png)
    ![Screenshot hello_world](images/Screenshot(2385).png)
    ![Screenshot hello_world](images/Screenshot(2386).png)
    ![Screenshot hello_world](images/Screenshot(2387).png)
    ![Screenshot hello_world](images/Screenshot(2388).png)
    ![Screenshot hello_world](images/Screenshot(2389).png)
    ![Screenshot hello_world](images/Screenshot(2390).png)
    ![Screenshot hello_world](images/Screenshot(2391).png)
    ![Screenshot hello_world](images/Screenshot(2382).png)
    ![Screenshot hello_world](images/Screenshot(2381).png)

    ![gif hello_world](images/tugas.gif)
