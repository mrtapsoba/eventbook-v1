import 'package:flutter/material.dart';

class AbonnementPage extends StatefulWidget {
  const AbonnementPage({Key? key}) : super(key: key);

  @override
  _AbonnementPageState createState() => _AbonnementPageState();
}

class _AbonnementPageState extends State<AbonnementPage> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: pageIndex,
        length: 2,
        child: Scaffold(
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
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
            bottom: TabBar(
              labelColor: Colors.grey,
              indicatorColor: Colors.red,
              tabs: [
                Tab(
                  text: "abonnées",
                ),
                Tab(
                  text: "abonnements",
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("userName"),
                      trailing: IconButton(
                          onPressed: () {}, icon: Icon(Icons.person_add)),
                    );
                  }),
              ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("userName"),
                      trailing: IconButton(
                          onPressed: () {}, icon: Icon(Icons.person_add)),
                    );
                  }),
            ],
          ),
        ));
  }
}
