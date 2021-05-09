import 'package:flutter/material.dart';

class DisplayPage extends StatelessWidget {
  // String _name;
  // String _climateIndex;
  // String _description;
  // DisplayPage(this._name, this._climateIndex, this._description);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Stack(children: <Widget>[

      Container(
        width: 1920,
        height: 1080,
        color: Colors.blue.shade100,
      ),
      Container(
        child: new Text("pogpgo"),
      ),
      


    ])));
  }
}
