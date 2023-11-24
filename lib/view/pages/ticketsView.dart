import 'package:flutter/material.dart';

class TicketView extends StatefulWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  _TicketViewState createState() => _TicketViewState();
}

class _TicketViewState extends State<TicketView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            "tickets",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(child: Text("Evenement : Metaverse Party")),
            SizedBox(height: 10),
            Center(child: Text("Type : tickets Standard")),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                height: 250,
                width: 250,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.navigate_before))),
                Expanded(child: Text("1 sur X")),
                Expanded(
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.navigate_next))),
              ],
            ),
            SizedBox(height: 10),
            Center(child: Text("Etat : Non Utilisé")),
          ],
        ));
  }
}
