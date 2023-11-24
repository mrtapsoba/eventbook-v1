import 'package:eventbook/view/pages/commentairePage.dart';
import 'package:eventbook/view/pages/mapsPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Evenement extends StatefulWidget {
  const Evenement({Key? key}) : super(key: key);

  @override
  _EvenementState createState() => _EvenementState();
}

class _EvenementState extends State<Evenement> {
  @override
  Widget build(BuildContext context) {
    final List<DropdownMenuItem<String>> dropListe = [
      DropdownMenuItem<String>(
        value: "ticket standard",
        child: Text("ticket standard"),
      ),
      DropdownMenuItem<String>(
        value: "ticket VIP",
        child: Text("ticket VIP"),
      ),
      DropdownMenuItem<String>(
        value: "ticket VVIP",
        child: Text("ticket VVIP"),
      ),
    ];

    String dropValue = dropListe[0].value!;
    int ticketNbr = 1;

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
          "Metaverse Party",
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Container(
                          height: 320,
                          child: Column(
                            children: [
                              Center(
                                  child: Container(
                                      height: 200,
                                      width: 200,
                                      child: Image.network(
                                          "https://image.freepik.com/free-psd/illustration-with-metaverse-icons-3d-illustration_1419-2495.jpg"))),
                              Text("copier le lien"),
                              SizedBox(height: 10),
                              Text("partager le lien"),
                              SizedBox(height: 10),
                              Text("partager le code qr"),
                              SizedBox(height: 10),
                              Text(
                                "signaler",
                                style: TextStyle(color: Colors.red),
                              )
                            ],
                          )),
                    );
                  });
            },
            icon: Icon(Icons.more_horiz, color: Colors.grey),
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
              width: MediaQuery.of(context).size.width - 30,
              height: MediaQuery.of(context).size.width - 30,
              padding: EdgeInsets.all(5),
              child: Card(child: Image.asset("fichiers/images/metaverse.jpg"))),
          Container(
            child: Column(
              children: [
                Text("date debut - date fin # horaire"),
                Text(
                  "canal olympia ouaga 2000",
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          //size: 25,
                        )),
                    Text(
                      "187",
                      style: TextStyle(color: Colors.red, fontSize: 12),
                    )
                  ],
                )),
                Expanded(
                    child: Column(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return CommentairePage();
                          }));
                        },
                        icon: Icon(
                          FontAwesomeIcons.solidComment,
                          color: Colors.grey,
                          //size: 25,
                        )),
                    Text(
                      "342",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    )
                  ],
                )),
                Expanded(
                    child: Column(
                  children: [
                    IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.send,
                          color: Colors.grey,
                          //size: 25,
                        )),
                    Text(
                      "envoyer",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    )
                  ],
                )),
                Expanded(
                    child: Column(
                  children: [
                    Text(
                      "+999",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    Text(
                      "participants",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    )
                  ],
                )),
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: IconButton(
                    icon: Icon(FontAwesomeIcons.mapMarkerAlt,
                        color: Colors.white),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MapsPage();
                      }));
                    },
                  ),
                )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text("description ..."),
          ),
          Container(
            child: Row(
              children: [
                Expanded(
                    child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.blue, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text(
                          "modifier",
                          style: TextStyle(color: Colors.blue),
                        )))),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                    child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(color: Colors.blue, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text(
                          "booster",
                          style: TextStyle(color: Colors.white),
                        )))),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                    child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            border: Border.all(color: Colors.red, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text(
                          "supprimer",
                          style: TextStyle(color: Colors.white),
                        )))),
              ],
            ),
          ),
          Card(
              child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red,
              child: Text("A"),
            ),
            title: Text("userName"),
            subtitle: Text("organisateur d'evenement socioculturel"),
            trailing: IconButton(
              icon: Icon(Icons.person_add, color: Colors.black),
              onPressed: null,
            ),
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return StatefulBuilder(
                      builder: (BuildContext context, StateSetter setState) {
                    return AlertDialog(
                      content: Container(
                        height: 250,
                        child: Column(
                          children: [
                            Text("choix du ticket",
                                style: TextStyle(
                                  color: Colors.red,
                                )),
                            SizedBox(
                              height: 7,
                            ),
                            Container(
                              padding: EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 2, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(15)),
                              child: DropdownButton(
                                  hint: Text("choisir votre ticket"),
                                  value: dropValue,
                                  items: dropListe,
                                  onChanged: (String? value) {
                                    setState(() {
                                      dropValue = value!;
                                    });
                                  }),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            // shoelace.io
                            Text("Prix Unitaire = 2000 fcfa",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17)),
                            SizedBox(
                              height: 7,
                            ),
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      if (ticketNbr > 1) {
                                        setState(() {
                                          ticketNbr--;
                                        });
                                      }
                                    },
                                    icon: Icon(FontAwesomeIcons.lessThan)),
                                Expanded(
                                    child: Center(
                                        child: Text("$ticketNbr",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.blue,
                                                fontWeight: FontWeight.bold)))),
                                IconButton(
                                    onPressed: () {
                                      if (ticketNbr < 10) {
                                        setState(() {
                                          ticketNbr++;
                                        });
                                      }
                                    },
                                    icon: Icon(FontAwesomeIcons.plus))
                              ],
                            ),
                            Text("total = ${(ticketNbr * 2000)} fcfa",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                            SizedBox(
                              height: 7,
                            ),
                            Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 50),
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  "paiement",
                                  style: TextStyle(color: Colors.white),
                                ))
                          ],
                        ),
                      ),
                    );
                  });
                });
          },
          label: Text("acheter tickets")),
    );
  }
}

class EventBox extends StatefulWidget {
  const EventBox({Key? key}) : super(key: key);

  @override
  _EventBoxState createState() => _EventBoxState();
}

class _EventBoxState extends State<EventBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [BoxShadow(), BoxShadow()]),
        child: Column(
          children: [
            ListTile(
                leading: CircleAvatar(
                  child: Text("A"),
                  backgroundColor: Colors.red,
                ),
                title: Text("Metaverse Party"),
                subtitle: Text("par userName"),
                trailing: IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Container(
                                height: 320,
                                child: Column(
                                  children: [
                                    Center(
                                        child: Container(
                                            height: 200,
                                            width: 200,
                                            child: Image.network(
                                                "https://image.freepik.com/vecteurs-libre/banniere-splash-vendredi-noir-dore_1361-1787.jpg"))),
                                    Text("copier le lien"),
                                    SizedBox(height: 10),
                                    Text("partager le lien"),
                                    SizedBox(height: 10),
                                    Text("partager le code qr"),
                                    SizedBox(height: 10),
                                    Text(
                                      "signaler",
                                      style: TextStyle(color: Colors.red),
                                    )
                                  ],
                                )),
                          );
                        });
                  },
                  icon: Icon(Icons.more_horiz),
                )),
            GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Evenement();
                  }));
                },
                child: Container(
                    width: MediaQuery.of(context).size.width - 30,
                    height: MediaQuery.of(context).size.width - 30,
                    child: Image.asset("fichiers/images/metaverse.jpg"))),
            Text(
              "date et heure",
              style: TextStyle(),
            ),
            Text(
              "lieu de levenement",
              style: TextStyle(color: Colors.blue),
            ),
            Container(
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.favorite,
                            color: Colors.red,
                            //size: 25,
                          )),
                      Text(
                        "187",
                        style: TextStyle(color: Colors.red, fontSize: 12),
                      )
                    ],
                  )),
                  Expanded(
                      child: Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return CommentairePage();
                            }));
                          },
                          icon: Icon(
                            FontAwesomeIcons.solidComment,
                            color: Colors.grey,
                            //size: 25,
                          )),
                      Text(
                        "342",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      )
                    ],
                  )),
                  Expanded(
                      child: Column(
                    children: [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.send,
                            color: Colors.grey,
                            //size: 25,
                          )),
                      Text(
                        "envoyer",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      )
                    ],
                  )),
                  Expanded(
                      child: Column(
                    children: [
                      Text(
                        "+999",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      Text(
                        "participants",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      )
                    ],
                  )),
                ],
              ),
            ),
          ],
        ));
  }
}
