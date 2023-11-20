import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen ({super.key});

  @override
  State<NavigationDialogScreen> createState() =>_NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends
State<NavigationDialogScreen> {
  Color color = Colors.blue.shade700;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title:  const Text('Amalia Salsa Lutfiana'),
      ),
      body: Center(
        child: ElevatedButton(child: const Text('Change Color'), onPressed: (){
          // Praktikum 9 Langkah 4
          _showColorDialog(context);
        }),
      ),
    );
  }

  // Praktikum 9 Langkah 3
  _showColorDialog(BuildContext context) async {
    await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text('Very important question'),
          content: const Text('Please choose a color'),
          actions: <Widget>[
            TextButton(
              child: const Text('Green'),
              onPressed: () {
                color = Color.fromARGB(255, 55, 139, 55);
                Navigator.pop(context, color);
              }
            ),
            TextButton(
              child: const Text('Brown'),
              onPressed: () {
                color = Color.fromARGB(255, 126, 73, 49);
                Navigator.pop(context, color);
              }
            ),
            TextButton(
              child: const Text('Yellow'),
              onPressed: () {
                color = Color.fromARGB(255, 210, 216, 120);
                Navigator.pop(context, color);
              }
            ),
          ],
        );
      },
    );
    setState(() {
    });
  }
}