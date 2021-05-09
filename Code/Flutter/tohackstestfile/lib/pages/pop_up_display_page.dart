import 'package:flutter/material.dart';

class DisplayPage extends StatelessWidget {
  final String _country;
  final String _description;
  final String _picture;
  DisplayPage(this._country, this._description, this._picture);

  String get country => _country;

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  //padding: const EdgeInsets.only(bottom: 1),
                  child: new Text(
                    country,
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          /*3*/
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        _description,
        softWrap: true,
      ),
    );

    return Material(
        child: Scaffold(
            body: ListView(
      children: [
        Image.asset(
          _picture,
          width: 600,
          height: 240,
          fit: BoxFit.cover,
        ),
        titleSection,
        textSection
      ],
    )));
  }
}
