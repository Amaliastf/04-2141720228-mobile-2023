import 'package:flutter/material.dart';
// Praktikum 1 Langkah 7
import 'stream.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amalia Salsa Lutfiana',
      theme: ThemeData(
        // Praktikum 1 Langkah 2
        primarySwatch: Colors.brown,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
      ),
      // Praktikum 1 Langkah 2
      home: const StreamHomePage(),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// Praktikum 1 Langkah 2
class StreamHomePage extends StatefulWidget{
  const StreamHomePage({super.key});
 

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
   // Praktikum 1 Langkah 8
  Color bgColor = Colors.blueGrey;
  late ColorSteam colorSteam;

// Praktikum 1 Langkah 11
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream'),
      ),
      body: Container(
        decoration: BoxDecoration(color: bgColor),
      ),
    );
  }

  // Praktikum 1 Langkah 9
  void changeColor() async {
    // Praktikum 1 Langkah 13
    colorSteam.getColors().listen((eventColor) {
    // await for (var eventColor in colorSteam.getColors()){
      setState(() {
        bgColor = eventColor;
      });
    });
  }
  @override
  void initState() {
    super.initState();
    colorSteam = ColorSteam();
    changeColor();
  }
}

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

  // @override
  // Widget build(BuildContext context) {
    

  //   // Praktikum 1 Langkah 11
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text('Stream'),
  //     ),
  //     body: Container(
  //       decoration: BoxDecoration(color: bgColor),
  //     )
    // return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: Text(widget.title),
      // ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       const Text(
      //         'You have pushed the button this many times:',
      //       ),
      //       Text(
      //         '$_counter',
      //         style: Theme.of(context).textTheme.headlineMedium,
      //       ),
      //     ],
      //   ),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), 
//     );
//   }
// }
