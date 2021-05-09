import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  static const _initialCameraPosition =
      CameraPosition(target: LatLng(43.93, -79.4), zoom: 5);

  final markerTest = Marker(
    markerId: MarkerId("ID"),
    position: LatLng(35, -122),
    infoWindow: InfoWindow(
      title: "Title",
      snippet: "this is a snippet",
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        myLocationButtonEnabled: false,
        zoomControlsEnabled: false,
        initialCameraPosition: _initialCameraPosition,
      ),
    );
  }
}

/**
 * if japan.isclicked{
 *  DisplayPage(String1 = "Japan", str2 = "CLimate in", str3 = "description")
 * }
 */

final marker = Marker(
  markerId: MarkerId("test"),
  position: LatLng(35, -122),
  infoWindow: InfoWindow(
    title: "Title",
    snippet: "this is a snippet",
  ),
);
// _markers[office.name] = marker;

// Map<MarkerId, Marker> markers = <MarkerId, Marker>{}; // CLASS MEMBER, MAP OF MARKS

// void _add() {
//     var markerIdVal = MyWayToGenerateId();
//     final MarkerId markerId = MarkerId(markerIdVal);

//     // creating a new MARKER
//     final Marker marker = Marker(
//       markerId: markerId,
//       position: LatLng(
//         center.latitude + sin(_markerIdCounter * pi / 6.0) / 20.0,
//         center.longitude + cos(_markerIdCounter * pi / 6.0) / 20.0,
//       ),
//       infoWindow: InfoWindow(title: markerIdVal, snippet: '*'),
//       onTap: () {
//         _onMarkerTapped(markerId);
//       },
//     );

//     setState(() {
//       // adding a new marker to map
//       markers[markerId] = marker;
//     });
// }

// GoogleMap(
//               onMapCreated: _onMapCreated,
//               initialCameraPosition: const CameraPosition(
//                 target: LatLng(-33.852, 151.211),
//                 zoom: 11.0,
//               ),
//               // TODO(iskakaushik): Remove this when collection literals makes it to stable.
//               // https://github.com/flutter/flutter/issues/28312
//               // ignore: prefer_collection_literals
//               markers: Set<Marker>.of(markers.values), // YOUR MARKS IN MAP
// )
