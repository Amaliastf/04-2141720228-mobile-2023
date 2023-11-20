import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationScreen extends StatefulWidget{
  const LocationScreen ({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String myPosition = '';

  @override
  void initState() {
    super.initState();
    getPosition().then((Position myPos) {
      Future.delayed(const Duration(seconds: 3));
      myPosition = 'Latitude: ${myPos.latitude.toString()} - Longitude:{myPos.longitude.toString()}';
      setState(() {
        myPosition = myPosition;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // Praktikum 6 Langkah 8
    final myWidget = myPosition == ''
      ? const CircularProgressIndicator()
      : Text(myPosition);;

    return Scaffold(
      appBar: AppBar(title: Text('Current Location')),
      body: Center(child: myWidget),
    );
    // return Scaffold(
    //   appBar: AppBar(title: const Text('Current Location')),
    //   body: Center(child: Text(myPosition)),
    // );
  }
  Future<Position> getPosition() async {
    await Geolocator.requestPermission();
    await Geolocator.isLocationServiceEnabled();
    Position? position = 
      await Geolocator.getCurrentPosition();
      return position;
  }

}

