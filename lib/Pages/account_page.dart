import 'package:crm/widget/allContacts.dart';
import 'package:crm/widget/allPopupMenu.dart';
import 'package:crm/widget/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class AccountsPage extends StatefulWidget {
  AccountsPage({Key? key}) : super(key: key);

  @override
  State<AccountsPage> createState() => _AccountsPageState();
}

class _AccountsPageState extends State<AccountsPage> {
  bool _customTileExpanded = false;

  bool? value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorLight,
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
              height: 70,
              decoration: BoxDecoration(
                  border: Border.all(
                color: Color.fromARGB(255, 186, 224, 255),
                width: 1.5,
              )),
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
                                      Theme.of(context).primaryColorLight)),
                              onPressed: () => Mydrawer(),
                              child: Icon(
                                Icons.filter_alt_sharp,
                                color: Colors.grey,
                              )),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 30,
                            child: AllContacts(),
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
                              child: Row(
                                children: [
                                  Text(
                                    'Create Account',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  VerticalDivider(
                                    indent: 5,
                                    endIndent: 5,
                                    color: Colors.white38,
                                  ),
                                  PopupMenuButton(
                                      icon: Icon(
                                        Icons.arrow_drop_down,
                                        color: Colors.white,
                                      ),
                                      padding: EdgeInsets.only(bottom: 3),
                                      itemBuilder: (BuildContext context) =>
                                          <PopupMenuEntry>[
                                            const PopupMenuItem(
                                              child: Text('Import Accounts'),
                                            ),
                                            const PopupMenuItem(
                                              child: Text('Import Notes'),
                                            ),
                                          ]),
                                ],
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
                        Container(
                          height: 30,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Theme.of(context).accentColor),
                              ),
                              onPressed: () {},
                              child: AllpopUpmenuButton()),
                        ),
                      ],
                    )
                  ],
                ),
              )),
          Row(
            children: [
              Container(
                width: 300,
                height: 750,
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Color.fromARGB(255, 186, 224, 255),
                  width: 1.5,
                )),
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
                                      borderRadius: BorderRadius.circular(10)),
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
                                      title: const Text('Untouched Records'),
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
                                      title:
                                          const Text('Related Records Action'),
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
                                      title: const Text('Converted Contacts'),
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
              Expanded(
                  child: Container(
                height: 750,
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Color.fromARGB(255, 186, 224, 255),
                  width: 1.5,
                )),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(children: [
                                  Checkbox(
                                    value: this.value,
                                    onChanged: (value) {
                                      setState(() {
                                        this.value = value;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Canvas View : ',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  Container(
                                    height: 30,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.black,
                                        ),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: TextButton(
                                        onPressed: () {},
                                        child: Row(
                                          children: [
                                            Text(
                                              'Accounts-Canvas',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w300,
                                                  color: Colors.black),
                                            ),
                                            PopupMenuButton(
                                                icon: Icon(
                                                  Icons.arrow_drop_down,
                                                  color: Colors.black,
                                                ),
                                                padding:
                                                    EdgeInsets.only(bottom: 3),
                                                itemBuilder:
                                                    (BuildContext context) =>
                                                        <PopupMenuEntry>[
                                                          const PopupMenuItem(
                                                            child: Text(
                                                                'Manage Canvas'),
                                                          ),
                                                          const PopupMenuItem(
                                                            child: Text(
                                                                'Create Canvas View'),
                                                          ),
                                                        ]),
                                          ],
                                        )),
                                  ),
                                  IconButton(
                                      onPressed: () {}, icon: Icon(Icons.edit))
                                ]),
                                Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: PopupMenuButton(
                                            constraints:
                                                BoxConstraints(maxHeight: 300),
                                            padding: EdgeInsets.only(bottom: 3),
                                            child: Row(
                                              children: [
                                                Text(
                                                  'ShotBy',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color: Colors.black),
                                                ),
                                                Icon(
                                                  Icons.arrow_drop_down,
                                                  color: Colors.black,
                                                ),
                                              ],
                                            ),
                                            itemBuilder:
                                                (BuildContext context) =>
                                                    <PopupMenuEntry>[
                                                      PopupMenuItem(
                                                        onTap: () {},
                                                        child: Text(
                                                          'Account Name',
                                                        ),
                                                      ),
                                                      PopupMenuItem(
                                                        onTap: () {},
                                                        child: Text(
                                                          'Account Owner',
                                                        ),
                                                      ),
                                                      PopupMenuItem(
                                                        onTap: () {},
                                                        child: Text(
                                                          'Created By',
                                                        ),
                                                      ),
                                                      PopupMenuItem(
                                                        onTap: () {},
                                                        child: Text(
                                                          'Created Time',
                                                        ),
                                                      ),
                                                      PopupMenuItem(
                                                        onTap: () {},
                                                        child: Text(
                                                          'Account Type',
                                                        ),
                                                      ),
                                                    ]),
                                      ),
                                    ),
                                    VerticalDivider(
                                      indent: 10,
                                      thickness: 1.5,
                                      endIndent: 10,
                                      color: Colors.grey,
                                    ),
                                    Checkbox(
                                      value: this.value,
                                      onChanged: (value) {
                                        setState(() {
                                          this.value = value;
                                        });
                                      },
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Fit to Screen',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                )
                              ]),
                        ),
                      ),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey, width: 1)),
                              height: 130,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 20),
                                child: Row(children: [
                                  IconButton(
                                      onPressed: () {}, icon: Icon(Icons.edit)),
                                  Checkbox(
                                    value: this.value,
                                    onChanged: (value) {
                                      setState(() {
                                        this.value = value;
                                      });
                                    },
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: SizedBox(
                                      height: 100,
                                      width: 100,
                                      child: Image.network(
                                          'https://upload.wikimedia.org/wikipedia/commons/5/53/Wikimedia-logo.png'),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            'King (Sample)',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black),
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Phone :',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5),
                                              child: Text(
                                                '5555555555',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ),
                                            Icon(Icons.phone),
                                            SizedBox(
                                              height: 30,
                                              child: VerticalDivider(
                                                indent: 5,
                                                thickness: 1.5,
                                                endIndent: 5,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            Text(
                                              'Website :',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5),
                                              child: Text(
                                                'http://kingmanufacturing.com',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 30,
                                              child: VerticalDivider(
                                                indent: 5,
                                                thickness: 1.5,
                                                endIndent: 5,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            Text(
                                              'Industry :',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5),
                                              child: Text(
                                                'Manufacting',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Acount Type :',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5),
                                              child: Text(
                                                'Vendor',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 30,
                                              child: VerticalDivider(
                                                indent: 5,
                                                thickness: 1.5,
                                                endIndent: 5,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            Text(
                                              'Billing city :',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5),
                                              child: Text(
                                                'Los Angles',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 30,
                                              child: VerticalDivider(
                                                indent: 5,
                                                thickness: 1.5,
                                                endIndent: 5,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            Text(
                                              'Billing Country :',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5),
                                              child: Text(
                                                'Uinted States',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 100,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 50,
                                        width: 50,
                                        child: Image.network(
                                            'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_640.png'),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 25, horizontal: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Belingston',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            Text(
                                              DateTime.now().toString(),
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ]),
                              ),
                            ),
                          ),
                        ],
                      )))
                    ]),
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
                    child: Text('Mass Convert'),
                  ),
                  const PopupMenuItem(
                    child: Text('Manage Tags'),
                  ),
                  const PopupMenuItem(
                    child: Text('Drafts'),
                  ),
                  const PopupMenuItem(
                    child: Text('Mass Email'),
                  ),
                  const PopupMenuItem(
                    child: Text('Autoresponder'),
                  ),
                  const PopupMenuItem(
                    child: Text('Approve Leads'),
                  ),
                  const PopupMenuItem(
                    child: Text('Deduplicate Leads'),
                  ),
                  const PopupMenuItem(
                    child: Text('Add to Campaigns'),
                  ),
                  const PopupMenuItem(
                    child: Text('Zoho Sheet View'),
                  ),
                  const PopupMenuItem(
                    child: Text('Print View'),
                  ),
                ]));
  }
}
