import 'package:tugas/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key});

  final List<Item> items = [
    Item(name: 'Sugar', price: 5000, image: 'assets/images/sugar.jpg', stock: 10, rating: 4.5),
    Item(name: 'Salt', price: 2000, image: 'assets/images/salt.jpg', stock: 5, rating: 4.0),
    // Tambahkan produk lainnya di sini
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
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Jumlah kolom dalam GridView
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Material(
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, routeName, arguments: item);
                },
                child: Card(
                  child: Column(
                    children: [
                      Image.asset(item.image), // Menampilkan foto produk
                      Text(item.name.toString(), style: TextStyle(fontSize: 18)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Stok: ${item.stock}', style: TextStyle(fontSize: 14)),
                          const SizedBox(width: 8),
                          Text('Rating: ${item.rating}', style: TextStyle(fontSize: 14)),
                        ],
                      ),
                      Text(item.price.toString(), style: TextStyle(fontSize: 18)),
                    ],
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

