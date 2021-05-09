import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  List<Marker> allMarkers = [];
  @override
  void initState() {
    super.initState();

    /**
     * At risk
     */
    // JAPAN
    allMarkers.add(Marker(
        markerId: MarkerId("Japan"),
        draggable: false,
        onTap: () => print("Japan has been tapped"),
        position: LatLng(35.6762, 139.6503)));

    // PHILLI
    allMarkers.add(Marker(
        markerId: MarkerId("Phillipines"),
        draggable: false,
        onTap: () => print("Philli has been tapped"),
        position: LatLng(14.5995, 120.9842)));

    // GERMANY
    allMarkers.add(Marker(
        markerId: MarkerId("Germany"),
        draggable: false,
        onTap: () => print("Germany has been tapped"),
        position: LatLng(52.5200, 13.4050)));

    // MADAGASCAR
    allMarkers.add(Marker(
        markerId: MarkerId("Madagascar"),
        draggable: false,
        onTap: () => print("Madagascar has been tapped"),
        position: LatLng(-18.8792, 47.5079)));

    // INDIA
    allMarkers.add(Marker(
        markerId: MarkerId("India"),
        draggable: false,
        onTap: () => print("India has been tapped"),
        position: LatLng(28.6139, 77.2090)));

    /**
     * At fault
     */

    // CHINA
    allMarkers.add(Marker(
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
        markerId: MarkerId("China"),
        draggable: false,
        onTap: () => print("China has been tapped"),
        position: LatLng(39.9042, 116.4074)));

    // USA
    allMarkers.add(Marker(
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
        markerId: MarkerId("USA"),
        draggable: false,
        onTap: () => print("USA has been tapped"),
        position: LatLng(38.9072, -77.0369)));

    // INDIA
    allMarkers.add(Marker(
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
        markerId: MarkerId("India"),
        draggable: false,
        onTap: () => print("India has been tapped"),
        position: LatLng(22, 83)));

    // RUSSIA
    allMarkers.add(Marker(
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
        markerId: MarkerId("Russia"),
        draggable: false,
        onTap: () => print("Russia has been tapped"),
        position: LatLng(55.751244, 37.618423)));

    // JAPAN
    allMarkers.add(Marker(
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
        markerId: MarkerId("Japan"),
        draggable: false,
        onTap: () => print("Japan has been tapped"),
        position: LatLng(35, 137)));
  }

  static const _initialCameraPosition =
      CameraPosition(target: LatLng(43.6532, 79.3832), zoom: 3);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GoogleMap(
      myLocationButtonEnabled: false,
      zoomControlsEnabled: false,
      initialCameraPosition: _initialCameraPosition,
      markers: Set.from(allMarkers),
    ));
  }
}
