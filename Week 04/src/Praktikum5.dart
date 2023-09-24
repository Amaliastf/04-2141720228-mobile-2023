void main() {

    //Langkah 1
    // var record = {
    // 'first': 'Amalia Salsa', 
    // 'a': 2,
    // 'b': true,
    // 'last':'2141720228',
    // };
    // print(record);

    //Langkah 3 (Awal)
//     var record = {
//     'first': 'Amalia Salsa', 
//     'a': 2,
//     'b': true,
//     'last':'2141720228',
//     };
//     print(record);

// }

// (int, int) tukar((int, int) record) {
//   var (a, b) = record;
//   return (b, a);
// }


//Langkah 3 (Perbaikan)
//   var record = {
//     'first': 'Amalia Salsa',
//     'a': 2,
//     'b': true,
//     'last': '2141720228',
//   };
//   print('Sebelum pertukaran: $record');
  
//   // Panggil fungsi tukar()
//   var record2 = tukar(record);
  
//   print('Sesudah pertukaran: $record2');
// }

// Map<String, dynamic> tukar(Map<String, dynamic> record) {
//   var a = record['a'];
//   var b = record['b'];
  
//   record['a'] = b;
//   record['b'] = a;
  
//   return record;


// Langkah 4
// Record type annotation in a variable declaration:
//Melakukan inisialisasi variabel mahasiswa
// (String, int) mahasiswa =  ('Amalia Salsa Lutfiana', 2141720228);
//   var record = {
//     'first': 'Amalia Salsa',
//     'a': 2,
//     'b': true,
//     'last': '2141720228',
//   };
//   print('Sebelum pertukaran: $record');
  
//   // Panggil fungsi tukar()
//   var record2 = tukar(record);
  
//   print('Sesudah pertukaran: $record2');
//   print(mahasiswa);
// }

// Map<String, dynamic> tukar(Map<String, dynamic> record) {
//   var a = record['a'];
//   var b = record['b'];
  
//   record['a'] = b;
//   record['b'] = a;
  
//   return record;

// }

//Langkah 5
var mahasiswa2 = ('Amalia Salsa Lutfiana', a: 2141720228, b: true, 'last');

(String, int) mahasiswa =  ('Amalia Salsa Lutfiana', 2141720228);
  var record = {
    'first': 'Amalia Salsa',
    'a': 2,
    'b': true,
    'last': '2141720228',
  };
  print('Sebelum pertukaran: $record');
  
  // Panggil fungsi tukar()
  var record2 = tukar(record);
  
  print('Sesudah pertukaran: $record2');
  print(mahasiswa);

  print(mahasiswa2.$1); // Prints 'Amalia Salsa Lutfiana'
  print(mahasiswa2.a); // Prints 2141720228
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

Map<String, dynamic> tukar(Map<String, dynamic> record) {
  var a = record['a'];
  var b = record['b'];
  
  record['a'] = b;
  record['b'] = a;
  
  return record;

}

