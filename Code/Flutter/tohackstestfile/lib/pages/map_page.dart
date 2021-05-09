// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// class MapScreen extends StatefulWidget {
//   @override
//   _MapScreenState createState() => _MapScreenState();
// }

// class _MapScreenState extends State<MapScreen> {
//   static const _initialCameraPosition =
//       CameraPosition(target: LatLng(43.93, -79.4), zoom: 5);

//   final markerTest = Marker(
//     markerId: MarkerId(1),
//     position: LatLng(35, -122),
//     infoWindow: InfoWindow(
//     title: 1,
//     snippet: "this is a snippet",
//     ),
//   );
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: GoogleMap(
//       myLocationButtonEnabled: false,
//       zoomControlsEnabled: false,
//       initialCameraPosition: _initialCameraPosition,
//       markers: markerTest
//     ));
//   }
// }

// /**
//  * if japan.isclicked{
//  *  DisplayPage(String1 = "Japan", str2 = "CLimate in", str3 = "description")
//  * }
//  */

// final marker = Marker(
//   markerId: MarkerId("test"),
//   position: LatLng(35, -122),
//   infoWindow: InfoWindow(
//     title: "Title",
//     snippet: "this is a snippet",
//   ),
// );
// // _markers[office.name] = marker;
