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
      zoom: 10,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: GoogleMap(initialCameraPosition: initialPosition));
  }
}
