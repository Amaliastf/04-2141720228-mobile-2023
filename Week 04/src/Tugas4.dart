// Menyimpan fungsi dalam variabel
int tambah(int x, int y) {
  return x + y;
}

int kurang(int x, int y) {
  return x - y;
}

// Menyimpan referensi ke fungsi dalam variabel
var operasi = tambah;

void main() {
  // Memanggil fungsi yang disimpan dalam variabel
  int hasilTambah = operasi(2, 3);
  print("Hasil penambahan: $hasilTambah");

  // Mengirim fungsi sebagai argumen
  int hasilKurang = run(kurang, 5, 3);
  print("Hasil pengurangan: $hasilKurang");
}

// Menerima fungsi sebagai argumen
int run(int Function(int, int) operasi, int x, int y) {
  return operasi(x, y);
}
