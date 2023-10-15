

// Praktikum 2
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout: Amalia Salsa Lutfiana/2141720228',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            // Praktikum 4
            Image.asset(
              'images/batu.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            TitleSection(),
            ButtonSection(), 
            // Praktikum 3
            textSection,
          ],
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    return Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: const Text(
                    'Wisata Taman Selecta',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text(
            '41',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
// Praktikum 3
Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    'Taman Selecta merupakan taman yang menyuguhkan kebun bunga sepanjang mata memandang. '
    'Hal ini tentu saja akan memanjakan mata para pengunjungnya untuk bertahan dan menghabiskan waktu berlama-lama menikmati taman bunga yang indah tersebut. '
    '  -Amalia Salsa Lutfiana '
    '2141720228-',
    softWrap: true,
  ),
);











// import 'package:flutter/material.dart';



// void main() {
//   runApp(const MyApp());
// }
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
  

// // Praktikum 2
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter layout: Amalia Salsa Lutfiana/2141720228',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Flutter layout demo'),
//         ),
//         body: Column(
//           children: [
//             TitleSection(),
//             ButtonSection(),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class TitleSection extends StatelessWidget {
//   const TitleSection({Key? key}) : super(key: key);


//   @override
//   Widget build(BuildContext context) {
//     Color color = Theme.of(context).primaryColor;

//     Widget buttonSection = Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         _buildButtonColumn(color, Icons.call, 'CALL'),
//          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
//          _buildButtonColumn(color, Icons.share, 'SHARE'),
//   ],
// );

//     return Container(
//       padding: const EdgeInsets.all(32.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Mengatur ruang kosong secara merata
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 padding: const EdgeInsets.only(bottom: 8.0, top: 8.0), // Memisahkan teks dari ikon
//                 child: const Text(
//                   'Wisata Gunung di Batu',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               Text(
//                 'Batu, Malang, Indonesia',
//                 style: TextStyle(
//                   color: Colors.grey[600],
//                 ),
//               ),
//             ],
//           ),
//           Column(
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(Icons.call, color: color),
//               Container(
//                 margin: const EdgeInsets.only(top: 8),
//                 child: Text(
//                   'CALL',
//                   style: TextStyle(
//                     fontSize: 12,
//                     fontWeight: FontWeight.w400,
//                     color: color,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Column(
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(Icons.near_me, color: color),
//               Container(
//                 margin: const EdgeInsets.only(top: 8),
//                 child: Text(
//                   'ROUTE',
//                   style: TextStyle(
//                     fontSize: 12,
//                     fontWeight: FontWeight.w400,
//                     color: color,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Column(
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(Icons.share, color: color),
//               Container(
//                 margin: const EdgeInsets.only(top: 8),
//                 child: Text(
//                   'SHARE',
//                   style: TextStyle(
//                     fontSize: 12,
//                     fontWeight: FontWeight.w400,
//                     color: color,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }




//   @override
//   Widget build(BuildContext context) {
//     Color color = Theme.of(context).primaryColor;

//     Widget buttonSection = Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         _buildButtonColumn(color, Icons.call, 'CALL'),
//         _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
//         _buildButtonColumn(color, Icons.share, 'SHARE'),
//       ],
//     );

//     return Container(
//       padding: const EdgeInsets.all(32.0),
//       child: Row(
//         children: [
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   padding: const EdgeInsets.only(bottom: 8.0),
//                   child: const Text(
//                     'Wisata Gunung di Batu',
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 Text(
//                   'Batu, Malang, Indonesia',
//                   style: TextStyle(
//                     color: Colors.grey[600],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Icon(
//             Icons.star,
//             color: Colors.red,
//           ),
//           const Text(
//             '41',
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Column _buildButtonColumn(Color color, IconData icon, String label) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Icon(icon, color: color),
//         Container(
//           margin: const EdgeInsets.only(top: 8),
//           child: Text(
//             label,
//             style: TextStyle(
//               fontSize: 12,
//               fontWeight: FontWeight.w400,
//               color: color,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }





// // Praktkum 1 Langkah 4
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter layout: Nama dan NIM Anda',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Flutter layout demo'),
//         ),
//         body: const Center(
//           child: TitleSection(), // Menggunakan widget TitleSection yang telah Anda definisikan
//         ),
//       ),
//     );
//   }
// }

// class TitleSection extends StatelessWidget {
//   const TitleSection({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(32.0), // Padding 32 piksel di sepanjang setiap tepi Container
//       child: Row(
//         children: [
//           Expanded(
//             /* soal 1*/
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start, // CrossAxisAlignment.start
//               children: [
//                 /* soal 2*/
//                 Container(
//                   padding: const EdgeInsets.only(bottom: 8.0), // Padding 8 piksel di bagian bawah
//                   child: const Text(
//                     'Wisata Gunung di Batu',
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 Text(
//                   'Batu, Malang, Indonesia',
//                   style: TextStyle(
//                     color: Colors.grey[600], // Set warna teks menjadi abu-abu
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           /* soal 3*/
//           Icon(
//             Icons.star,
//             color: Colors.red, // Set warna ikon menjadi merah
//           ),
//           const Text(
//             '41', // Teks "41"
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }




//Praktikum 1 Langkah 2
// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter layout: Nama dan NIM Anda',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Flutter layout demo'),
//         ),
//         body: const Center(
//           child: Text('Amalia Salsa Lutfiana/2141720228'),
//         ),
//       ),
//     );
//   }
// }


// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }



// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       appBar: AppBar(

//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,

//         title: Text(widget.title),
//       ),
//       body: Center(

//         child: Column(

//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
