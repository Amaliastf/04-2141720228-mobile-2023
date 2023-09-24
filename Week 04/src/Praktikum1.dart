void main(){
//Langkah 1
// var list = [1, 2, 3];
// assert(list.length == 3);
// assert(list[1] == 2);
// print(list.length);
// print(list[1]);

// list[1] = 1;
// assert(list[1] == 1);
// print(list[1]);

//Langkah 3
//null sebagai nilai default
final List<String?> list = List.filled(5, null); 
  assert(list.length == 5);

  // elemen index ke-1 dan ke-2 dengan nama dan NIM Anda
  list[1] = "Amalia Salsa Lutfiana";
  list[2] = "2141720228";

  assert(list[1] == 1);
  assert(list[2] == 2);

  print(list.length);
  print(list[1]);
  print(list[2]);

}