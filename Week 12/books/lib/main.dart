import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amal',
      theme: ThemeData(
        // Praktikum 1 Soal 1
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
      ),
      // Praktikum 1 Soal 1
      home: const FuturePage(),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

// Praktikum 1 Langkah 3
@override
  State<FuturePage> createState() => _FuturePageState();
}


//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

class _FuturePageState extends State<FuturePage> {
  // Praktikum 1 Langkah 3
  String result = '';
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Amalia Salsa Lutfiana'),
      ),
      body: Center(
        child: Column(children: [
          const Spacer(),
          // ElevatedButton(
          //   child: const Text('GO!'),
          //   onPressed: () {},
          // ),
          // Praktikum 1 Langkah 5 Soal Nomor 3
          ElevatedButton(
              child: const Text('GO!'),
              onPressed: () {
                setState(() {});
                getData().then((value) {
                  result = value.body.toString().substring(0, 450);
                  setState(() {});
                }).catchError((_) {
                  result = 'An error occurred';
                  setState(() {});
                });
              },
            ),
          const Spacer(),
          Text(result),
          const Spacer(),
          const CircularProgressIndicator(),
          const Spacer(),
        ]
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
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  // Praktikum 1 Soal Nomor 2
  Future<Response> getData() async {
    const authority = 'www.googleapis.com';
    const path = '/books/v1/volumes/F9lxDQAAQBAJ';
    Uri url = Uri.https(authority, path);
    return http.get(url);
  }

  // ElevatedButton(
  //   child: Text('GO!'),
  //   onPressed: (){
  //     setState(() {});
  //     getData()
  //     .then((value) {
  //       result = value.body.toString().substring(0, 450);
  //       setState(() {});
  //     }).catchError((_)){
  //       result = 'An error occured';
  //       setState(() {});
  //     });
  //   },
  // ),
}
