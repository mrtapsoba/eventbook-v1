import 'package:flutter/material.dart';

class AddEventPage extends StatefulWidget {
  const AddEventPage({Key? key}) : super(key: key);

  @override
  _AddEventPageState createState() => _AddEventPageState();
}

class _AddEventPageState extends State<AddEventPage> {
  final List<DropdownMenuItem<String>> dropPays = [
    DropdownMenuItem<String>(
      value: "BURKINA FASO",
      child: Text("BURKINA FASO"),
    ),
    DropdownMenuItem<String>(
      value: "MALI",
      child: Text("MALI"),
    ),
    DropdownMenuItem<String>(
      value: "GUINEE",
      child: Text("GUINEE"),
    ),
  ];

  String dropValuePays = "BURKINA FASO";
  final List<DropdownMenuItem<String>> dropVille = [
    DropdownMenuItem<String>(
      value: "Ouagadougou",
      child: Text("Ouagadougou"),
    ),
    DropdownMenuItem<String>(
      value: "Bobo Dioulasso",
      child: Text("Bobo Dioulasso"),
    ),
    DropdownMenuItem<String>(
      value: "Koudougou",
      child: Text("Koudougou"),
    ),
  ];

  String dropValueVille = "Ouagadougou";
  String _debut = "Date de debut";
  String _fin = "Date de fin";
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
          "ajout d'evenement",
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.red),
                      borderRadius: BorderRadius.circular(30)),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add_a_photo, color: Colors.blue)),
                ),
              ),
              Expanded(child: Text("Carousel des images")),
            ],
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Nom de l'evenement",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.grey),
                    borderRadius: BorderRadius.circular(15)),
                child: DropdownButton(
                    hint: Text("Pays"),
                    value: dropValuePays,
                    items: dropPays,
                    onChanged: (String? value) {
                      setState(() {
                        dropValuePays = value!;
                      });
                    }),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.grey),
                    borderRadius: BorderRadius.circular(15)),
                child: DropdownButton(
                    hint: Text("Ville"),
                    value: dropValueVille,
                    items: dropVille,
                    onChanged: (String? value) {
                      setState(() {
                        dropValueVille = value!;
                      });
                    }),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Lien Maps de la localisation",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                child: TextButton(
                    onPressed: () {
                      showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime(2050))
                          .then((value) {
                        if (value != null) {
                          DateTime _fromDate = value;
                          setState(() {
                            _debut = _fromDate.toString();
                          });
                        }
                      });
                    },
                    child: Text("$_debut")),
              )),
              Expanded(
                  child: Container(
                child: TextButton(
                    onPressed: () {
                      showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime(2050))
                          .then((value) {
                        if (value != null) {
                          DateTime _fromDate = value;
                          setState(() {
                            _fin = _fromDate.toString();
                          });
                        }
                      });
                    },
                    child: Text(_fin)),
              )),
            ],
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Description de l'evenement",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
              maxLines: 3,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "ajouter l'evenement",
                  style: TextStyle(color: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}
