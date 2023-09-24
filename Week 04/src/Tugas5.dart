void main() {
  //Anonymous function sebagai argumen dalam fungsi lain
  var listNumber = [1, 2, 3, 4, 5];
  
  // Menggunakan anonymous function untuk menggandakan setiap elemen dalam list
  var result = listNumber.map((number) {
    return number * 2;
  }).toList();
  
  print(result);
  
  //Anonymous function dalam variabel
  var tambah = (int X, int Y) {
    return X + Y;
  };
  
  int result2 = tambah(2, 3);
  print(result2);
}
