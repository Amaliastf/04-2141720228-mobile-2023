import 'package:flutter/material.dart';
// Praktikum 2 Langkah 1
import 'dart:async';

// Praktikum 2 Langkah 2
class NumberStream {
  // Praktikum 2 Langkah 3
  final StreamController<int> controller = StreamController();

  // Praktikum 2 Langkah 4
  void addNumberToSink(int newNumber) {
    controller.sink.add(newNumber);
  }

  // Praktikum 2 Langkah 5
  close() {
    controller.close();
  }
}

class ColorSteam {
  final List < Color > colors = [
    const Color.fromARGB(255, 161, 124, 94),
    Colors.blueGrey,
    const Color.fromARGB(255, 132, 84, 141),
    const Color.fromARGB(255, 105, 131, 120),
    const Color.fromARGB(255, 87, 88, 84)
    // Colors.blueGrey,
    // Colors.amber,
    // Colors.deepPurple,
    // Colors.lightBlue,
    // Colors.teal
  ];
  //Praktikum 1 Langkah 5
  Stream<Color> getColors() async* {
    //Praktikum 1 Langkah 6
    yield*Stream.periodic(
      const Duration(seconds: 1), (int t) {
        int index = t % colors.length;
        return colors[index];
      }
    );
  }
}