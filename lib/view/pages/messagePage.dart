import 'package:eventbook/view/pages/compte.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
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
            "userName",
            style: TextStyle(color: Colors.grey),
          ),
          actions: [
            IconButton(
                icon: CircleAvatar(),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ComptePage();
                  }));
                })
          ],
        ),
        body: Column(
          children: [
            Flexible(
              child: ListView.builder(
                  reverse: true,
                  itemCount: 5,
                  itemBuilder: (context3, index) {
                    return Container(
                      margin: EdgeInsets.only(
                          top: 5, bottom: 5, left: 5, right: 65),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15)),
                      child: Text(
                        "message",
                        style: TextStyle(color: Colors.white),
                      ),
                    );
                  }),
            ),
            Container(
                child: Padding(
              padding: const EdgeInsets.fromLTRB(4, 1, 4, 1),
              child: Material(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey.withOpacity(0.2),
                child: Padding(
                  padding: EdgeInsets.only(left: 6, right: 6),
                  child: TextFormField(
                    maxLines: 2,
                    decoration: InputDecoration(
                        labelText: "Message",
                        hintText: "Entrer votre message a envoyer"),
                    keyboardType: TextInputType.text,
                  ),
                ),
              ),
            ))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_a_photo),
          onPressed: () {},
        ));
  }
}
