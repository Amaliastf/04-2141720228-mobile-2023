// //Lexical Scope
// void main() {
//   var x = 10; // Variabel x hanya dapat diakses di dalam fungsi ini.
//   print(x);   // Ini akan berfungsi dengan baik.
// }

//Lexical Closures
Function operasi(int x) {
  return (int y) {
    return x + y;
  };
}

void main() {
  //masih dapat memanggil variabel dari luar lingkupnya
  var tambah = operasi(2);
  print(tambah(3)); 
}

