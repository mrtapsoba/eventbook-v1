import 'package:flutter/material.dart';

class CommentairePage extends StatefulWidget {
  const CommentairePage({Key? key}) : super(key: key);

  @override
  _CommentairePageState createState() => _CommentairePageState();
}

class _CommentairePageState extends State<CommentairePage> {
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
            "commentaires",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        body: Column(
          children: [
            Flexible(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context3, index) {
                    return Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(15)),
                      child: Text(
                        "Commentaire",
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
                        labelText: "Commentaire",
                        hintText: "Entrer votre commentaire a envoyer"),
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
