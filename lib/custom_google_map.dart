import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CustomGoogleMap extends StatefulWidget {
  const CustomGoogleMap({super.key});

  @override
  State<CustomGoogleMap> createState() => _CustomGoogleMapState();
}

class _CustomGoogleMapState extends State<CustomGoogleMap> {
  late CameraPosition initialPosition;
  @override
  void initState() {
    super.initState();
    initialPosition = CameraPosition(
      target: LatLng(31.21440, 30.01772),
      zoom: 12,
    );
  }

  @override
  void dispose() {
    super.dispose();
    mapController.dispose();
  }

  late GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            GoogleMap(
              onMapCreated: (controller) {
                mapController = controller;
              },

              initialCameraPosition: initialPosition,
            ),
            Positioned(
              bottom: 16,
              left: 50,
              right: 60,
              child: ElevatedButton(
                onPressed: () {
                  CameraPosition newCameraPosition = CameraPosition(
                    target: LatLng(30.014122802689872, 31.217029950766122),
                    zoom: 12,
                  );
                  mapController.animateCamera(
                    CameraUpdate.newCameraPosition(newCameraPosition),
                  );
                },
                child: const Text('Change Location'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
