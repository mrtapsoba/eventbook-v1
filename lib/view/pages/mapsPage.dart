import 'package:flutter/material.dart';

class MapsPage extends StatefulWidget {
  const MapsPage({Key? key}) : super(key: key);

  @override
  _MapsPageState createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.navigate_before,
                color: Colors.grey,
              )),
          backgroundColor: Colors.white,
          title: Text(
            "Google Maps",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView(
          children: [
            Center(
              child: Container(
                child: Text("geolocalisation de l'evenement"),
              ),
            ),
          ],
        ));
  }
}
