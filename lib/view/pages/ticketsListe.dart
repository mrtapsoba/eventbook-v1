import 'package:eventbook/view/pages/ticketsView.dart';
import 'package:flutter/material.dart';

class TicketsListe extends StatefulWidget {
  const TicketsListe({Key? key}) : super(key: key);

  @override
  _TicketsListeState createState() => _TicketsListeState();
}

class _TicketsListeState extends State<TicketsListe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "e",
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
            Text(
              "b tickets",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            )
          ],
        ),
        backgroundColor: Colors.white,
        /*actions: [
          IconButton(onPressed: null, icon: Icon(Icons.add_comment)),
        ],*/
      ),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Image.network(""),
                ),
                title: Text(
                  "ticket standard",
                  style: TextStyle(
                    fontWeight: FontWeight.bold, /*fontSize: 15*/
                  ),
                ),
                subtitle: Text("Metaverse Party a canal olymplia ouaga 2000"),
                trailing: Text(
                  "1",
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return TicketView();
                  }));
                },
              ),
            );
          }),
    );
  }
}
