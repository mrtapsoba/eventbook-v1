import 'package:eventbook/view/base.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'eventbook app',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BaseView());
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.calendar_today, color: Colors.red),
                          Text(
                            "Events",
                            style: TextStyle(color: Colors.red),
                          )
                        ],
                      ),
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          /* */
                        });
                      }),
                  MaterialButton(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.airplane_ticket_outlined,
                              color: Colors.grey),
                          Text(
                            "Tickets",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          /* */
                        });
                      }),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.message_outlined, color: Colors.grey),
                          Text(
                            "Message",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          /* */
                        });
                      }),
                  MaterialButton(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.account_circle, color: Colors.grey),
                          Text(
                            "M Taps",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          /* */
                        });
                      }),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Scanner',
        child: Icon(Icons.qr_code_2),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
