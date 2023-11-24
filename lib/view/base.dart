import 'package:eventbook/view/pages/compte.dart';
import 'package:eventbook/view/pages/discussionPage.dart';
import 'package:eventbook/view/pages/homePage.dart';
import 'package:eventbook/view/pages/ticketsListe.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BaseView extends StatefulWidget {
  const BaseView({Key? key}) : super(key: key);

  @override
  _BaseViewState createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  int pageIndex = 0;
  dynamic currentPage = HomePage();

  final allPage = [HomePage(), DiscussionPage(), TicketsListe(), ComptePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPage,
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
                          Icon(Icons.event,
                              color:
                                  (pageIndex == 0) ? Colors.red : Colors.grey),
                          Text(
                            "events",
                            style: TextStyle(
                                color: (pageIndex == 0)
                                    ? Colors.red
                                    : Colors.grey),
                          )
                        ],
                      ),
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          pageIndex = 0;
                          currentPage = allPage[pageIndex];
                        });
                      }),
                  MaterialButton(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.message,
                              color:
                                  (pageIndex == 1) ? Colors.red : Colors.grey),
                          Text(
                            "message",
                            style: TextStyle(
                                color: (pageIndex == 1)
                                    ? Colors.red
                                    : Colors.grey),
                          )
                        ],
                      ),
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          pageIndex = 1;
                          currentPage = allPage[pageIndex];
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
                          Icon(FontAwesomeIcons.ticketAlt,
                              color:
                                  (pageIndex == 2) ? Colors.red : Colors.grey),
                          Text(
                            "tickets",
                            style: TextStyle(
                                color: (pageIndex == 2)
                                    ? Colors.red
                                    : Colors.grey),
                          )
                        ],
                      ),
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          pageIndex = 2;
                          currentPage = allPage[pageIndex];
                        });
                      }),
                  MaterialButton(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.account_circle,
                              color:
                                  (pageIndex == 3) ? Colors.red : Colors.grey),
                          Text(
                            "M Taps",
                            style: TextStyle(
                                color: (pageIndex == 3)
                                    ? Colors.red
                                    : Colors.grey),
                          )
                        ],
                      ),
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          pageIndex = 3;
                          currentPage = allPage[pageIndex];
                        });
                      }),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Scanner',
        child: Icon(Icons.qr_code_2),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
