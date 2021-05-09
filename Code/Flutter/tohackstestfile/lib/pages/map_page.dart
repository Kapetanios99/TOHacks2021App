//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'pop_up_display_page.dart';

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
        markerId: MarkerId("JapanRisk"),
        draggable: false,
        onTap: () => Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context) => new DisplayPage(
                'Japan',
                "1) (Climate Risk Index: 5.5) Heavy rains, heat waves, the Osaka earthquake and Jebi typhoon, which ravaged Japan in 2018, made it the most threatened country in the world by climate change. Weather events themselves were behind 1,282 deaths on the island — 1.01 per 100,000 inhabitants — and caused economic losses of 35,839 million dollars and a collapse of per capita Gross Domestic Product of 0.64%.",
                'images/japan.jpg'))),
        position: LatLng(35.6762, 139.6503)));

    // PHILLI
    allMarkers.add(Marker(
        markerId: MarkerId("PhilliRisk"),
        draggable: false,
        onTap: () => Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context) => new DisplayPage(
                'Philippines',
                "2) (Climate Risk Index: 11.17) Typhoon Mangkhut's passage through the Philippines in 2018 affected more than 250,000 people across the country and left at least 59 dead due to torrential rainfall. According to Germanwatch, extreme weather events caused a total of 455 deaths in the country that year — 0.43 per 100,000 inhabitants — as well as more than 4,540 million US dollars in economic losses and a drop in GDP of 0.48% per capita.",
                'images/phil.jpg'))),
        position: LatLng(14.5995, 120.9842)));

    // GERMANY
    allMarkers.add(Marker(
        markerId: MarkerId("GermanyRisk"),
        draggable: false,
        onTap: () => Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context) => new DisplayPage(
                'Germany',
                "3) (Climate Risk Index: 13.83) The German country ranks the third position of the most affected countries by climate risk due to the heat wave it suffered in 2018, the hottest year in its history with damages of more than 3,500 million dollars for the agricultural sector. The weather events in Germany caused a total of 1,246 deaths — 1.5 per 100,000 inhabitants — losses of 5,038 million dollars and a decrease in per capita GDP of 0.12%.",
                'images/germany.jpg'))),
        position: LatLng(52.5200, 13.4050)));

    // MADAGASCAR
    allMarkers.add(Marker(
        markerId: MarkerId("MadRisk"),
        draggable: false,
        onTap: () => Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context) => new DisplayPage(
                'Madagascar',
                "4) (Climate Risk Index: 15.83) Global warming and climate risks threaten the survival of the lemur and other endemic animal species on the island. Adverse weather events have also made the African country one of the most vulnerable to climate change with 72 deaths — 0.27 per 100,000 inhabitants — about 568 million dollars in economic losses and a drop in per capita GDP of 1.32%.",
                'images/madagascar.jpg'))),
        position: LatLng(-18.8792, 47.5079)));

    // INDIA
    allMarkers.add(Marker(
        markerId: MarkerId("IndiaRisk"),
        draggable: false,
        onTap: () => Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context) => new DisplayPage(
                'India',
                "5) (Climate Risk Index: 18.17) The Indian subcontinent is other major victim of extreme heat, floods and sandstorms, among other devastating natural events. In 2018 caused more than 2,000 deaths — 0.16 per 100,000 inhabitants —, losses of 37,807 million dollars and a decrease in per capita GDP of 0.36%.",
                'images/india.jpg'))),
        position: LatLng(28.6139, 77.2090)));

    /**
     * At fault
     */

    // CHINA
    allMarkers.add(Marker(
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
        markerId: MarkerId("China"),
        draggable: false,
        onTap: () => Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context) => new DisplayPage(
                'China', "1) 10.06 GigaTons of CO2", 'images/china.jpg'))),
        position: LatLng(39.9042, 116.4074)));

    // USA
    allMarkers.add(Marker(
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
        markerId: MarkerId("USA"),
        draggable: false,
        onTap: () => Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context) => new DisplayPage(
                'USA', "2) 5.41 GigaTons of CO2", 'images/newyork.jpg'))),
        position: LatLng(38.9072, -77.0369)));

    // INDIA
    allMarkers.add(Marker(
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
        markerId: MarkerId("India"),
        draggable: false,
        onTap: () => Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context) => new DisplayPage(
                'India', "3) 2.65 GigaTons of CO2", 'images/india.jpg'))),
        position: LatLng(22, 83)));

    // RUSSIA
    allMarkers.add(Marker(
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
        markerId: MarkerId("Russia"),
        draggable: false,
        onTap: () => Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context) => new DisplayPage(
                'Russia', "4) 1.71 GigaTons of CO2", 'images/russia.jpg'))),
        position: LatLng(55.751244, 37.618423)));

    // JAPAN
    allMarkers.add(Marker(
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
        markerId: MarkerId("Japan"),
        draggable: false,
        onTap: () => Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context) => new DisplayPage(
                'Japan', "5) 1.16 GigaTons of CO2", 'images/japan.jpg'))),
        position: LatLng(35, 137)));
  }

  static const _initialCameraPosition =
      CameraPosition(target: LatLng(43.6532, -79.3832), zoom: 3);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade300,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 95.0, top: 10.0, bottom: 10.0),
              child: Container(
                alignment: Alignment.center,
                child: new Text('High Risk',
                    style: new TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                width: 85,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.red,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 50.0, top: 10.0, bottom: 10.0),
              child: Container(
                alignment: Alignment.center,
                child: new Text('Contributors',
                    style: new TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                width: 85,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.orange,
                ),
              ),
            ),
          ],
        ),
        body: GoogleMap(
          myLocationButtonEnabled: false,
          zoomControlsEnabled: false,
          initialCameraPosition: _initialCameraPosition,
          markers: Set.from(allMarkers),
        ));
  }
}
