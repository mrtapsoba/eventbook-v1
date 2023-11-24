import 'package:eventbook/view/pages/messagePage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DiscussionPage extends StatefulWidget {
  const DiscussionPage({Key? key}) : super(key: key);

  @override
  _DiscussionPageState createState() => _DiscussionPageState();
}

class _DiscussionPageState extends State<DiscussionPage> {
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
              "b messagerie",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            )
          ],
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(onPressed: null, icon: Icon(FontAwesomeIcons.comment)),
        ],
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Image.network(""),
                ),
                title: Text(
                  "userName",
                  style: TextStyle(
                    fontWeight: FontWeight.bold, /*fontSize: 15*/
                  ),
                ),
                subtitle: Text("last message ..."),
                trailing: Text(
                  "2",
                  style: TextStyle(color: Colors.red),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MessagePage();
                  }));
                },
              ),
            );
          }),
    );
  }
}
