//List

    

// void main() {
//     List<int> operasi(int x, int y);
//     int hasilTambah = x + y;
//     int hasilKali = x * y;
//     return [hasilTambah, hasilKali];
    
//   var hasil = operasi(2, 3);
//   print("Hasil Penambahan: ${hasil[0]}");
//   print("Hasil Perkalian: ${hasil[1]}");
// }



// void main() {
//   //Deklarasi variabel list
//   var list = [1, 2, 3];
//   //Memeriksa apakah jumlah elemen pada list sejumlah 3
//   assert(list.length == 3);
  
//   // Menyimpan angka 4 ke indeks 1
//   list[1] = 4; 
//   // Menyimpan angka 5 ke indeks 2
//   list[2] = 5; 

// // Memeriksa apakah elemen pada indeks 1 adalah angka 4
//   assert(list[1] == 4); 
// // Memeriksa apakah elemen pada indeks 2 adalah angka 5
//   assert(list[2] == 5); 

// //Mencetak jumlah elemen dari list
//   print("Panjang list: ${list.length}");
// //Mencetak elemen pada indeks 1
//   print("Elemen pada indeks 1: ${list[1]}");
// //Mencetak elemen pada indeks 2
//   print("Elemen pada indeks 2: ${list[2]}");
// }


//Map
void main(){
//Deklarasi variabel mhs1, String sebagai kunci dan dynamic sebagai nilai yang dapat menyimpan data dengan tipe apapun
var mhs1 = Map<String, dynamic>();
//Pengisian data ke dalam Map
mhs1['nama'] = 'Amalia Salsa Lutfiana';
mhs1['kelas'] = '3F';
mhs1['nim'] = 2141720228;

//Deklarasi variabel mhs2 dengan kunci String dan nilai String
var mhs2 = Map<String, String>();
mhs2['nama2'] = 'Haechan Lee';
mhs2['nim2'] = '2141720228';

//Memanggil mhs1 dan mhs2 untuk dicetak
    print(mhs1);
    print(mhs2);
}





