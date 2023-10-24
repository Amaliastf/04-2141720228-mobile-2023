import 'package:tugas/models/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


// class ItemPage extends StatelessWidget {
//   const ItemPage({Key? key});
//   @override
//   Widget build(BuildContext context) {
//     final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Market'),
//       ),
//       body: Container(
//         margin: const EdgeInsets.all(15),
//         child: Card(
//           child: Column(
//             children: [
//               Image.asset(itemArgs.image), // Menampilkan foto produk
//               Text(itemArgs.name.toString(), style: TextStyle(fontSize: 24)),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text('Stok: ${itemArgs.stock}', style: TextStyle(fontSize: 18)),
//                   const SizedBox(width: 8),
//                   Text('Rating: ${itemArgs.rating}', style: TextStyle(fontSize: 18)),
//                 ],
//               ),
//               Text(itemArgs.price.toString(), style: TextStyle(fontSize: 18),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }



// class ItemPage extends StatelessWidget {
//   const ItemPage({Key? key});
//   @override
//   Widget build(BuildContext context) {
//     final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Market'),
//       ),
//       body: Container(
//         margin: const EdgeInsets.all(15),
//         child: Card(
//           child: Column(
//             children: [
//               Image.asset(itemArgs.image), // Menampilkan foto produk
//               Text(itemArgs.name.toString(), style: TextStyle(fontSize: 24)),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text('Stok: ${itemArgs.stock}', style: TextStyle(fontSize: 18)),
//                   const SizedBox(width: 8),
//                   Text('Rating:', style: TextStyle(fontSize: 18)),
//                   RatingBar.builder(
//                     initialRating: itemArgs.rating,
//                     minRating: 1,
//                     direction: Axis.horizontal,
//                     allowHalfRating: true,
//                     itemCount: 5,
//                     itemSize: 20,
//                     itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
//                     itemBuilder: (context, _) => Icon(
//                       Icons.star,
//                       color: Colors.amber,
//                     ),
//                     onRatingUpdate: (rating) {
//                       // Handle when rating is updated, if needed.
//                     },
//                   ),
//                 ],
//               ),
//               Text(itemArgs.price.toString(), style: TextStyle(fontSize: 18)),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }




class ItemPage extends StatelessWidget {
  const ItemPage({Key? key});
  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Market'),
      ),
      body: SingleChildScrollView( // Tambahkan SingleChildScrollView di sini
        child: Container(
          margin: const EdgeInsets.all(15),
          child: Card(
            child: Column(
              children: [
                Image.asset(itemArgs.image), // Menampilkan foto produk
                Text(itemArgs.name.toString(), style: TextStyle(fontSize: 24)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Stok: ${itemArgs.stock}', style: TextStyle(fontSize: 18)),
                    const SizedBox(width: 8),
                    Text('Rating:', style: TextStyle(fontSize: 18)),
                    RatingBar.builder(
                      initialRating: itemArgs.rating,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 20,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        // Handle when rating is updated, if needed.
                      },
                    ),
                  ],
                ),
                Text(itemArgs.price.toString(), style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

