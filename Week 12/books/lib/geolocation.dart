import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({
    super.key
  });

  @override
  State < LocationScreen > createState() => _LocationScreenState();

}

class _LocationScreenState extends State < LocationScreen > {
  // Praktikum 7 Langkah 2
  Future < Position > ? position;
  String myPosition = '';

  @override
  void initState() {
    // Praktikum 7 Langkah 3
    super.initState();
    position = getPosition();
    // getPosition().then((Position myPos) {
    //   myPosition = 'Latitude: ${myPos.latitude.toString()} - Longitude:{myPos.longitude.toString()}';
    //   setState(() {
    //     myPosition = myPosition;
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    // Praktikum 7 Langkah 4
    return Scaffold(
      appBar: AppBar(title: Text('Current Location')),
      body: Center(child: FutureBuilder(
        future: position,
        builder: (BuildContext context, AsyncSnapshot < Position >
          snapshot) {
          if (snapshot.connectionState ==
            ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.connectionState ==
            ConnectionState.done) {
            if (snapshot.hasError) {
              return Text('Something terrible happende!');
            }
            return Text(snapshot.data.toString());
          } else {
            return const Text('');
          }
        },
      ), )
    );
    // // Praktikum 6 Langkah 8
    // final myWidget = myPosition == ''
    //   ? const CircularProgressIndicator()
    //   : Text(myPosition);;

    // return Scaffold(
    //   appBar: AppBar(title: Text('Current Location')),
    //   body: Center(child: myWidget),
    // );
    // return Scaffold(
    //   appBar: AppBar(title: const Text('Current Location')),
    //   body: Center(child: Text(myPosition)),
    // );
  }
  Future < Position > getPosition() async {
    // await Geolocator.requestPermission();
    // Praktikum 7 Langkah 1
    await Geolocator.isLocationServiceEnabled();
    await Future.delayed(const Duration(seconds: 3));
    Position position = await Geolocator.getCurrentPosition();
    // Position? position = 
    //   await Geolocator.getCurrentPosition();
    return position;
  }

}