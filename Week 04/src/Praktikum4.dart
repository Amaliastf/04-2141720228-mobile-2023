void main(){
    //Langkah 1
    // var list1 = [1, 2, 3];
    // var list2 = [0, ...list1];
    // print(list1);
    // print(list2);
    // print(list2.length);


    //Langkah 3
//   var list1 = [1, 2, 3, null];
//   var list2 = [0, ...list1];
//   var list3 = [0, ...?list1];

//   var nama = ['Amalia Salsa Lutfiana', '2141720228'];
// //   var nim = '2141720228';

//   print(list1);
//   print(list2);
//   print(nama); // Cetak nama
//   print(list2.length);
//   print(list3.length);


  //Langkah 4
    // var promoActive = true;
    // var nav = ['Home', 'Furniture', 'Plants', promoActive ? 'Outlet' : null];
    // var list1 = [1, 2, 3, null];
    // var list2 = [0, ...list1];
    // var list3 = [0, ...?list1];

    // var nama = ['Amalia Salsa Lutfiana', '2141720228'];

    // print(nav);
    // print(list1);
    // print(list2);
    // print(nama);
    // print(list2.length);
    // print(list3.length);


    //Langkah 5
    // var promoActive = true;
    // var login = 'Manager';
    // var nav = ['Home', 'Furniture', 'Plants', promoActive ? 'Outlet' : null];
    // var nav2 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
    // var list1 = [1, 2, 3, null];
    // var list2 = [0, ...list1];
    // var list3 = [0, ...?list1];

    // var nama = ['Amalia Salsa Lutfiana', '2141720228'];

    // print(nav);
    // print(nav2);
    // print(list1);
    // print(list2);
    // print(nama);
    // print(list2.length);
    // print(list3.length);


    //Langkah 6
    var listOfInts = [1, 2, 3];
    var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
    var promoActive = true;
    var login = 'Manager';
    var nav = ['Home', 'Furniture', 'Plants', promoActive ? 'Outlet' : null];
    var nav2 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
    var list1 = [1, 2, 3, null];
    var list2 = [0, ...list1];
    var list3 = [0, ...?list1];

    var nama = ['Amalia Salsa Lutfiana', '2141720228'];

    assert(listOfStrings[1] == '#1');

    print(listOfStrings);
    print(nav);
    print(nav2);
    print(list1);
    print(list2);
    print(nama);
    print(list2.length);
    print(list3.length);



}