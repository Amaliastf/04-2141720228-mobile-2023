import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart'
as http;
import 'package:async/async.dart';
import 'package:books/geolocation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amalia Salsa Lutfiana',
      theme: ThemeData(
        // Praktikum 1 Soal 1
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
      ),
      // Praktkum 6 Langkah 6
      home: LocationScreen(),
      // Praktikum 1 Soal 1
      // home: const FuturePage(),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({
    super.key
  });

  // class MyHomePage extends StatefulWidget {
  //   const MyHomePage({super.key, required this.title});

  //   final String title;

  // Praktikum 1 Langkah 3
  @override
  State < FuturePage > createState() => _FuturePageState();
}


//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

class _FuturePageState extends State < FuturePage > {
  // Praktikum 1 Langkah 3
  String result = '';
  // Praktikum 3 Langkah 2
  late Completer completer;
  // Praktikum 5 Langkah 1
  Future returnError() async {
    await Future.delayed(const Duration(seconds: 2));
    throw Exception('Something terrible happened!');
  }

  // Praktikum 5 Langkah 4
  Future handleError() async {
    try {
      await returnError();
    }
    catch (error) {
      setState(() {
        result = error.toString();
      });
    }
    finally {
      print('Complete');
    }
  }

  // Praktikum 4 Langkah 1
  void returnFG() {

    // Praktikum 4 Langkah 4
    final futures = Future.wait<int>([
      returnOneAsync(),
      returnTwoAsync(),
      returnThreeAsync(),
    ]);
    // FutureGroup<int> futureGroup = FutureGroup<int>();
    // futureGroup.add(returnOneAsync());
    // futureGroup.add(returnTwoAsync());
    // futureGroup.add(returnThreeAsync());
    // futureGroup.close();
    // futureGroup.future.then((List <int> value){
    //   int total = 0;
    //   for (var element in value) {
    //     total += element;
    //   }
    //   setState(() {
    //     result = total.toString();
    //   });
    // });
  }

  Future getNumber() {
    completer = Completer < int > ();
    calculate();
    return completer.future;
  }

  // Praktikum 3 Langkah 5
  Future calculate() async {
    try {
    await Future.delayed(const Duration(seconds: 5));
    completer.complete(42);
    }
    catch (_) {
      completer.completeError({});
    }
  }
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
              // Praktikum 2 Langkah 3
              // ElevatedButton(
              //   child: const Text('GO!'),
              //     onPressed: () {
              //       count();
              //     },
              // ),

              // Praktikum 3 Langkah 3
              ElevatedButton(
                child: const Text('GO!'),
                  onPressed: () {
                    // Praktikum 5 Soal nomor 10
                    handleError();
                    // // Praktikum 5 Langkah 2
                    // returnError()
                    // .then((value){
                    //   setState(() {
                    //     result = 'Succes';
                    //   });
                    // }).catchError((onError){
                    //   setState(() {
                    //     result = onError.toString();
                    //   });
                    // }).whenComplete(() => print('Complete'));
                    // // Praktikum 4 Langkah 2
                    // returnFG();
                    // count();

                    // // Praktikum 3 Langkah 6
                    // getNumber().then((value) {
                    //   setState(() {
                    //     result = value.toString();
                    //   });
                    // }).catchError((e) {
                    //   result= 'An error occured';
                    // });
                  },
              ),

              // // Praktikum 1 Langkah 5 Soal Nomor 3
              // ElevatedButton(
              //   child: const Text('GO!'),
              //     onPressed: () {
              //       setState(() {});
              //       getData().then((value) {
              //         result = value.body.toString().substring(0, 450);
              //         setState(() {});
              //       }).catchError((_) {
              //         result = 'An error occurred';
              //         setState(() {});
              //       });
              //     },
              // ),
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
  Future < Response > getData() async {
    const authority = 'www.googleapis.com';
    const path = '/books/v1/volumes/F9lxDQAAQBAJ';
    Uri url = Uri.https(authority, path);
    return http.get(url);
  }

  // Praktikum 2 Langkah 1
  Future < int > returnOneAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 1;
  }

  Future < int > returnTwoAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 2;
  }

  Future < int > returnThreeAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 3;
  }

  // Praktikum 2 Langkah 2
  Future count() async {
    int total = 0;
    total = await returnOneAsync();
    total += await returnTwoAsync();
    total += await returnThreeAsync();
    setState(() {
      result = total.toString();
    });
  }
}