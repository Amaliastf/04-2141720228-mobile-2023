// import 'package:flutter/material.dart';
// import 'package:belanja/models/item.dart';

// class HomePage extends StatelessWidget {
//   final List<Item> items = [
//     Item(name: 'Sugar', price: 5000),
//     Item(name: 'Salt', price: 2000),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Shopping List'),
//       ),
//       body: Container(
//         margin: EdgeInsets.all(8),
//         child: ListView.builder(
//           padding: EdgeInsets.all(8),
//           itemCount: items.length,
//           itemBuilder: (context, index) {
//             final item = items[index];
//             return Card(
//               child: Container(
//                 margin: EdgeInsets.all(8),
//                 child: Row(
//                   children: [
//                     Expanded(child: Text(item.name)),
//                     Expanded(
//                       child: Text(
//                         item.price.toString(),
//                         textAlign: TextAlign.end,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }


//Langkah Akhir
import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(name: 'Sugar', price: 5000),
    Item(name: 'Salt', price: 2000),
  ];
  final routeName = '/item';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List : Amalia Salsa'),
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Material(
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, routeName, arguments: item);
                },
                child: Card(
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Expanded(child: Text(item.name.toString())),
                        Expanded(
                          child: Text(
                            item.price.toString(),
                            textAlign: TextAlign.end,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

