import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tohackstestfile/pages/map_page.dart';
import './pages/home_page.dart';
import 'pages/pop_up_display_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => MapScreen()))); //CHANGE TO HOMEPAGE
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
        color: Colors.blue.shade300,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("HotSpots",
                  style: new TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  )),
            ]));
  }
}

// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("GeeksForGeeks")),
//       body: Center(
//           child: Text(
//         "Home page",
//         textScaleFactor: 2,
//       )),
//     );
//   }
// }
