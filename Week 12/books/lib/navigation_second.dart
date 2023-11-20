import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  _NavigationSecondState createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {

  
  @override
  Widget build(BuildContext context) {
    Color color;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Amalia Salsa Lutfiana'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: const Text('Green'),
              onPressed: () {
                color = Color.fromARGB(255, 55, 139, 55);
                Navigator.pop(context, color);
              }
            ),
            ElevatedButton(
              child: const Text('Brown'),
              onPressed: () {
                color = Color.fromARGB(255, 126, 73, 49);
                Navigator.pop(context,color);
              }
            ),
            ElevatedButton(
              child: const Text('Yellow'),
              onPressed: () {
                color = Color.fromARGB(255, 210, 216, 120);             Navigator.pop(context, color);
              }
            ),
          ],
        ),
      )
    );
  }
}