import 'package:flutter/material.dart';
import 'package:google_map/custom_google_map.dart';

void main() {
  runApp(const GoogleMAp());
}

class GoogleMAp extends StatelessWidget {
  const GoogleMAp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomGoogleMap(),
    );
  }
}
