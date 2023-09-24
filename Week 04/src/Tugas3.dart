// //Parameter Posisional
// int tambah(int x, int y) {
//   return x + y;
// }

// void main() {
//   var result = tambah(2, 3);
//   print(result);
// }




// //Parameter Default
// void mhs({String nama = 'Mahasiswa'}) {
//   print('Halo, $nama!');
// }

// void main() {
//   mhs(); 
//   mhs(nama: 'Amalia Salsa'); 
// }




// //Parameter Opsional dengan kata kunci
// void info({String nama, int nim}) {
//   print('Nama: $nama');
//   print('Nim: $nim');
// }

// void main() {
//   info(nama: 'Amalia Salsa Lutfiana', nim: 2141720228);
// }




// //Parameter Opsional posisional
// void info(String prodi, String kelas, [String nama]) {
//   print('Program Studi: $prodi');
//   print('Kelas: $kelas');
//   if (nama != null) {
//     print('Nama: $nama');
//   }
// }

// void main() {
//   info('Teknik Informatika', '3F', 'Amalia Salsa Lutfiana');
// }





//Parameter sebagai fungsi
int operasi(int x, int y, int Function(int, int) fungsi) {
  return fungsi(x, y);
}

int tambah(int x, int y) {
  return x + y;
}

int kurang(int x, int y) {
  return x - y;
}

void main() {
  var hasilTambah = operasi(2, 3, tambah);
  var hasilKurang = operasi(5, 3, kurang);

  print(hasilTambah);
  print(hasilKurang); 
}







