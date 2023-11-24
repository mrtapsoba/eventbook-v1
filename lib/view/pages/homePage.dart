import 'package:eventbook/view/pages/evenement.dart';
import 'package:eventbook/view/pages/notificationsPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 1;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: pageIndex,
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                Text(
                  "event",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
                Text(
                  "book",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                )
              ],
            ),
            backgroundColor: Colors.white,
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return NotificationPage();
                    }));
                  },
                  icon: Icon(Icons.notifications, color: Colors.grey)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  )),
            ],
            bottom: TabBar(
              labelColor: Colors.grey,
              indicatorColor: Colors.red,
              tabs: [
                Tab(
                  text: "abonnements",
                ),
                Tab(
                  text: "recommendations",
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return EventBox();
                  }),
              ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return EventBox();
                  }),
            ],
          ),
        ));
  }
}
