import 'package:crm/widget/allTasks.dart';
import 'package:crm/widget/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class MeetingPage extends StatefulWidget {
  MeetingPage({Key? key}) : super(key: key);

  @override
  State<MeetingPage> createState() => _MeetingPageState();
}

class _MeetingPageState extends State<MeetingPage> {
  bool _customTileExpanded = false;

  bool? value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorLight,
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
              color: Colors.grey.shade300,
              height: 70,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Theme.of(context).primaryColor)),
                              onPressed: () => Mydrawer(),
                              child: Icon(
                                Icons.filter_alt_sharp,
                                color: Colors.white,
                              )),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 30,
                            child: AllTask(),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          IconButton(
                              hoverColor: Color.fromARGB(255, 219, 219, 219),
                              onPressed: () {},
                              icon: Icon(
                                Icons.replay_rounded,
                                weight: 20,
                              )),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.blue)),
                              onPressed: () {},
                              child: Text(
                                'Create Meeting',
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 30,
                          child: ActionsPopupMenu(),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    )
                  ],
                ),
              )),
          SizedBox(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Text('Total Records : '),
                      Text(
                        '10',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ]),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(5)),
                          child: TextButton(
                            onPressed: () {},
                            child: PopupMenuButton(
                                constraints: BoxConstraints(
                                    maxHeight: 300, maxWidth: 180),
                                padding: EdgeInsets.only(bottom: 3),
                                child: Row(
                                  children: [
                                    Text(
                                      '10 Record Per Page',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black),
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                                itemBuilder: (BuildContext context) =>
                                    <PopupMenuEntry>[
                                      PopupMenuItem(
                                        onTap: () {},
                                        child: Text(
                                          '10 Record Per Page',
                                        ),
                                      ),
                                      PopupMenuItem(
                                        onTap: () {},
                                        child: Text(
                                          '20 Record Per Page',
                                        ),
                                      ),
                                      PopupMenuItem(
                                        onTap: () {},
                                        child: Text(
                                          '30 Record Per Page',
                                        ),
                                      ),
                                      PopupMenuItem(
                                        onTap: () {},
                                        child: Text(
                                          '40 Record Per Page',
                                        ),
                                      ),
                                      PopupMenuItem(
                                        onTap: () {},
                                        child: Text(
                                          '50 Record Per Page',
                                        ),
                                      ),
                                    ]),
                          ),
                        ),
                        VerticalDivider(
                          indent: 22,
                          thickness: 3,
                          endIndent: 22,
                          color: Colors.grey,
                        ),
                        Text(
                          '1 - 10',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.chevron_left_sharp)),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.chevron_right_sharp))
                      ],
                    )
                  ]),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Card(
                  color: Colors.grey.shade300,
                  elevation: 10,
                  child: Container(
                    width: 280,
                    height: 700,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Filter Leads By',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              height: 45,
                              child: Center(
                                child: TextField(
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      hintText: 'Search',
                                      prefixIcon: Icon(Icons.search),
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Expanded(
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ExpansionTile(
                                      leading: Icon(Icons.arrow_drop_down),
                                      title: Text('Systerm Defined Filters'),
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                      children: <Widget>[
                                        CheckboxListTile(
                                          title: const Text('Touched Records'),
                                          value: timeDilation != 1.0,
                                          onChanged: (bool? value) {
                                            setState(() {});
                                          },
                                        ),
                                        CheckboxListTile(
                                          title:
                                              const Text('Untouched Records'),
                                          value: timeDilation != 1.0,
                                          onChanged: (bool? value) {
                                            setState(() {});
                                          },
                                        ),
                                        CheckboxListTile(
                                          title: const Text('Record Actions'),
                                          value: timeDilation != 1.0,
                                          onChanged: (bool? value) {
                                            setState(() {});
                                          },
                                        ),
                                        CheckboxListTile(
                                          title: const Text(
                                              'Related Records Action'),
                                          value: timeDilation != 1.0,
                                          onChanged: (bool? value) {
                                            setState(() {});
                                          },
                                        ),
                                      ],
                                    ),
                                    ExpansionTile(
                                      leading: Icon(Icons.arrow_drop_down),
                                      title: Text('Filters by Feilds'),
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                      children: <Widget>[
                                        CheckboxListTile(
                                          title: const Text('Annual Revenue'),
                                          value: timeDilation != 1.0,
                                          onChanged: (bool? value) {
                                            setState(() {});
                                          },
                                        ),
                                        CheckboxListTile(
                                          title: const Text('City'),
                                          value: timeDilation != 1.0,
                                          onChanged: (bool? value) {
                                            setState(() {});
                                          },
                                        ),
                                        CheckboxListTile(
                                          title: const Text('Company'),
                                          value: timeDilation != 1.0,
                                          onChanged: (bool? value) {
                                            setState(() {});
                                          },
                                        ),
                                        CheckboxListTile(
                                          title: const Text('Convered Account'),
                                          value: timeDilation != 1.0,
                                          onChanged: (bool? value) {
                                            setState(() {});
                                          },
                                        ),
                                        CheckboxListTile(
                                          title:
                                              const Text('Converted Contacts'),
                                          value: timeDilation != 1.0,
                                          onChanged: (bool? value) {
                                            setState(() {});
                                          },
                                        ),
                                        CheckboxListTile(
                                          title: const Text('Converted Deals'),
                                          value: timeDilation != 1.0,
                                          onChanged: (bool? value) {
                                            setState(() {});
                                          },
                                        ),
                                        CheckboxListTile(
                                          title: const Text('Country'),
                                          value: timeDilation != 1.0,
                                          onChanged: (bool? value) {
                                            setState(() {});
                                          },
                                        ),
                                        CheckboxListTile(
                                          title: const Text('Created By'),
                                          value: timeDilation != 1.0,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              timeDilation = value! ? 2.0 : 1.0;
                                            });
                                          },
                                        ),
                                        CheckboxListTile(
                                          title: const Text('Created Time'),
                                          value: timeDilation != 1.0,
                                          onChanged: (bool? value) {
                                            setState(() {});
                                          },
                                        ),
                                        CheckboxListTile(
                                          title: const Text('Email'),
                                          value: timeDilation != 1.0,
                                          onChanged: (bool? value) {
                                            setState(() {});
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ]),
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: Card(
                color: Colors.grey.shade300,
                elevation: 10,
                child: Container(
                  height: 700,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start, children: []),
                ),
              )),
            ],
          )
        ]),
      ),
    );
  }
}

class ActionsPopupMenu extends StatelessWidget {
  const ActionsPopupMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStatePropertyAll(Theme.of(context).accentColor),
        ),
        onPressed: () {},
        child: PopupMenuButton(
            padding: EdgeInsets.only(bottom: 3),
            child: Row(
              children: [
                Text(
                  'Actions',
                  style: TextStyle(color: Colors.white),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
              ],
            ),
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                  const PopupMenuItem(
                    child: Text(
                      'Mass Delete',
                    ),
                  ),
                  const PopupMenuItem(
                    child: Text('Mass Update'),
                  ),
                  const PopupMenuItem(
                    child: Text('Manage Tags'),
                  ),
                  const PopupMenuItem(
                    child: Text(
                      'Print View',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ]));
  }
}
