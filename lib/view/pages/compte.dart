import 'package:eventbook/view/pages/abonnementListe.dart';
import 'package:eventbook/view/pages/addEvenement.dart';
import 'package:eventbook/view/pages/evenement.dart';
import 'package:flutter/material.dart';

class ComptePage extends StatefulWidget {
  const ComptePage({Key? key}) : super(key: key);

  @override
  _ComptePageState createState() => _ComptePageState();
}

class _ComptePageState extends State<ComptePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text(
                "e",
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
              Text(
                "b compte",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              )
            ],
          ),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.settings,
                  color: Colors.grey,
                )),
          ],
        ),
        body: Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: ListView(
              children: [
                Row(
                  children: [
                    Container(
                        width: 75,
                        height: 75,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(37)),
                        child: Center(
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(35)),
                          ),
                        )),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            "10",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          Text(
                            "events",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return AbonnementPage();
                            }));
                          },
                          child: Column(
                            children: [
                              Text(
                                "19560",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              Text(
                                "abonnees",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              )
                            ],
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return AbonnementPage();
                            }));
                          },
                          child: Column(
                            children: [
                              Text(
                                "7",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              Text(
                                "abonnements",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              )
                            ],
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                      Border.all(color: Colors.blue, width: 2),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text(
                                "modifier",
                                style: TextStyle(color: Colors.blue),
                              )))),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Container(
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  border:
                                      Border.all(color: Colors.blue, width: 2),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text(
                                "statistiques",
                                style: TextStyle(color: Colors.white),
                              )))),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                      Border.all(color: Colors.blue, width: 2),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text(
                                "ecrire",
                                style: TextStyle(color: Colors.blue),
                              )))),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Container(
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  border:
                                      Border.all(color: Colors.blue, width: 2),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text(
                                "s'abonner",
                                style: TextStyle(color: Colors.white),
                              )))),
                    ],
                  ),
                ),
                Center(
                  child: Icon(Icons.arrow_circle_up, color: Colors.grey),
                ),
                Flexible(
                    child: Container(
                  height: MediaQuery.of(context).size.height - 150,
                  child: ListView.builder(
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return EventBox();
                      }),
                ))
              ],
            )),
        floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AddEventPage();
              }));
            },
            label: Text("+ evenement")));
  }
}
