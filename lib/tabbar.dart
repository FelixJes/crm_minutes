import 'package:crm/Pages/account_page.dart';
import 'package:crm/Pages/contact_page.dart';
import 'package:crm/Pages/deals_page.dart';
import 'package:crm/Pages/home_page.dart';
import 'package:crm/Pages/leads_page.dart';
import 'package:crm/Pages/meeting_page.dart';
import 'package:crm/Pages/task_page.dart';
import 'package:flutter/material.dart';

class Tabbar extends StatelessWidget {
  const Tabbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 5,
      length: 17,
      child: Scaffold(
        appBar: AppBar(
          // backgroundColor: Color.fromARGB(221, 39, 39, 39),
          backgroundColor: Colors.white,
          title: SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Image.network(
                'https://minutes.biz/images/flogo1.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          actions: [
            Theme(
              data: ThemeData(iconTheme: IconThemeData(color: Colors.black)),
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Row(
                  children: [
                    // Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                    //   Text(
                    //     'Enterprise-Trail',
                    //     style: TextStyle(color: Colors.white),
                    //   ),
                    //   Text(
                    //     'Upgrade',
                    //     style: TextStyle(
                    //         decoration: TextDecoration.underline, color: Colors.blue),
                    //   ),
                    // ]),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: VerticalDivider(
                        indent: 15,
                        endIndent: 15,
                        // color: Colors.white38,
                      ),
                    ),
                    IconButton(
                      style: ButtonStyle(
                          overlayColor: MaterialStatePropertyAll(Colors.white)),
                      onPressed: () {},
                      icon: Icon(Icons.search),
                      // color: Colors.white60,
                    ),
                    IconButton(
                      style: ButtonStyle(
                          overlayColor: MaterialStatePropertyAll(Colors.white)),
                      onPressed: () {},
                      icon: Icon(Icons.notifications_none_rounded),
                      // color: Colors.white60,
                    ),
                    IconButton(
                      style: ButtonStyle(
                          overlayColor: MaterialStatePropertyAll(Colors.white)),
                      onPressed: () {},
                      icon: Icon(Icons.addchart_outlined),
                      // color: Colors.white60,
                    ),
                    IconButton(
                      style: ButtonStyle(
                          overlayColor: MaterialStatePropertyAll(Colors.white)),
                      onPressed: () {},
                      icon: Icon(Icons.event),
                      // color: Colors.white60,
                    ),
                    IconButton(
                      style: ButtonStyle(
                          overlayColor: MaterialStatePropertyAll(Colors.white)),
                      onPressed: () {},
                      icon: Icon(Icons.store_rounded),
                      // color: Colors.white60,
                    ),
                    IconButton(
                      style: ButtonStyle(
                          overlayColor: MaterialStatePropertyAll(Colors.white)),
                      onPressed: () {},
                      icon: Icon(Icons.settings),
                      // color: Colors.white60,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: VerticalDivider(
                        indent: 15,
                        endIndent: 15,
                        // color: Colors.white38,
                      ),
                    ),
                    IconButton(
                      style: ButtonStyle(
                          overlayColor: MaterialStatePropertyAll(Colors.white)),
                      onPressed: () {},
                      icon: Icon(Icons.account_circle_sharp),
                      // color: Colors.white60,
                    ),
                    IconButton(
                      style: ButtonStyle(
                          overlayColor: MaterialStatePropertyAll(Colors.white)),
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                      // color: Colors.white60,
                    ),
                  ],
                ),
              ),
            )
          ],
          bottom: PreferredSize(
            preferredSize: Size(double.maxFinite, 70),
            child: Container(
              color: Colors.black,
              child: const TabBar(
                indicatorWeight: 3,
                indicatorColor: Colors.grey,
                labelColor: Color.fromARGB(255, 141, 255, 145),
                unselectedLabelColor: Color.fromARGB(255, 224, 224, 224),
                tabs: [
                  Tab(
                    text: 'Home',
                  ),
                  Tab(
                    text: 'Leads',
                  ),
                  Tab(
                    text: 'Contact',
                  ),
                  Tab(
                    text: 'Accounts',
                  ),
                  Tab(
                    text: 'Deals',
                  ),
                  Tab(
                    text: 'Task',
                  ),
                  Tab(
                    text: 'Meeting',
                  ),
                  Tab(
                    text: 'Calls',
                  ),
                  Tab(
                    text: 'Reports',
                  ),
                  Tab(
                    text: 'Analytics',
                  ),
                  Tab(
                    text: 'Products',
                  ),
                  Tab(
                    text: 'Quotes',
                  ),
                  Tab(
                    text: 'Sales Orders',
                  ),
                  SizedBox(
                      width: 200,
                      child: Tab(
                        text: 'Purchase',
                      )),
                  Tab(
                    text: 'Services',
                  ),
                  Tab(
                    text: 'Projects',
                  ),
                  Tab(
                    icon: Icon(Icons.more_horiz_rounded),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(children: [
          HomePage(),
          LeadsPage(),
          ContactPage(),
          AccountsPage(),
          DealsPage(),
          TaskPage(),
          MeetingPage(),
        ]),
      ),
    );
  }
}
