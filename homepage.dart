import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Homepage1 extends StatefulWidget {
  const Homepage1({Key? key}) : super(key: key);

  @override
  State<Homepage1> createState() => _Homepage1State();
}

class _Homepage1State extends State<Homepage1> {

    String _locationMessage = "";

    void _getCurrentLocation() async {
      final position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high
      );
      setState(() {
        _locationMessage =
        "Latitude:${position.latitude},Longitude:${position.longitude}";
      });
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(_locationMessage),
                ElevatedButton(onPressed: _getCurrentLocation,
                    child: Text("location")),
              ],
            ),
          ),

        );
      }
    }
  }