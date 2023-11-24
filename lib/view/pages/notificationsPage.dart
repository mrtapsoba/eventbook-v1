import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: CircleAvatar(),
                  title: Text("data"),
                  trailing: Icon(Icons.picture_in_picture),
                ),
              );
            }));
  }
}
