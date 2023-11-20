import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';


class LocationScreen extends StatefulWidget {
  const LocationScreen ({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String myPosition = '';
  Future<Position>? position;

  Future<Position> getPosition() async {
    //praktikum 6
    // await Future.delayed(const Duration(seconds: 3));
    // await Geolocator.requestPermission();
    // await Geolocator.isLocationServiceEnabled();
    // Position? position = await Geolocator.getCurrentPosition();
    // return position;

    //praktikum 7
    await Geolocator.isLocationServiceEnabled();
    await Future.delayed(const Duration(seconds: 3));
    Position position = await Geolocator.getCurrentPosition();
    return position;
  }

  @override
  void initState() {
    super.initState();
    position = getPosition();

    //praktikum 6
    // getPosition().then((Position myPos) {
    //   myPosition = "Latitude : ${myPos.latitude.toString()} - Longitude : ${myPos.longitude.toString()}";
    //   setState(() {
    //     myPosition = myPosition;
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Current Location Roziq Mahbubi'),),
      //praktikum 7
      body: Center(
        child: FutureBuilder(
          future: position, 
          builder: (BuildContext context, AsyncSnapshot<Position> snapshot){
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.connectionState == ConnectionState.done) {
              //soal 14
              if (snapshot.hasError) {
                return Text('Something terrible happened!');
              }
              //soal 13
              return Text(snapshot.data.toString());
            } else {
              return const Text('');
            }
          },
        ),
      ),
      //praktikum 6
      // body: Center(child: Text(myPosition)),
    );
  }
}