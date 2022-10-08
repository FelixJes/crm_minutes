import 'package:crm/widget/navigationBar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Initial Selected Value
  String dropdownvalue = 'Classic Homepage';

  // List of items in our dropdown menu
  var items = [
    'Classic Homepage',
    'Belingston\'s Home',
    'Manager\'s Home',
    'Custmoized Home',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 208, 240, 255),
            height: 90,
            child: Padding(
              padding: const EdgeInsets.only(top: 15, left: 50, right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.blueGrey.shade300),
                          borderRadius: BorderRadius.circular(8)),
                      child: SizedBox(
                          height: 70,
                          width: 60,
                          child: Icon(
                            Icons.location_city,
                            size: 50,
                            color: Colors.blueGrey.shade400,
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: 'Welcome ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      TextSpan(
                          text: 'Belingston',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                    ]))
                  ]),
                  Row(children: [
                    IconButton(
                        hoverColor: Colors.blue,
                        onPressed: () {},
                        icon: Icon(
                          Icons.replay_rounded,
                          weight: 20,
                        )),
                    InkWell(
                      onTap: () {},
                      child: Card(
                          elevation: 10,
                          child: SizedBox(
                            height: 30,
                            width: 200,
                            child: Center(
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  focusColor: Colors.white,
                                  // Initial Value
                                  value: dropdownvalue,

                                  // Array list of items
                                  items: items.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    );
                                  }).toList(),
                                  // After selecting the desired option,it will
                                  // change button value to selected value
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownvalue = newValue!;
                                    });
                                  },
                                ),
                              ),
                            ),
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Theme.of(context).accentColor)),
                        onPressed: () {},
                        child: Icon(
                          Icons.more_horiz_rounded,
                          color: Colors.white,
                        ))
                  ]),
                ],
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Container(
                width: double.infinity,
                height: 700,
                child: Expanded(
                  child: SingleChildScrollView(
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: Row(
                          children: [
                            Expanded(
                              child: Card(
                                elevation: 5,
                                color: Colors.grey.shade200,
                                child: SizedBox(height: 100),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Card(
                                elevation: 5,
                                color: Colors.grey.shade200,
                                child: SizedBox(height: 100),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Card(
                                elevation: 5,
                                color: Colors.grey.shade200,
                                child: SizedBox(height: 100),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Card(
                                elevation: 5,
                                color: Colors.grey.shade200,
                                child: SizedBox(height: 100),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: Row(
                          children: [
                            Expanded(
                              child: Card(
                                elevation: 5,
                                color: Colors.grey.shade200,
                                child: SizedBox(height: 500),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Card(
                                elevation: 5,
                                color: Colors.grey.shade200,
                                child: SizedBox(height: 500),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: Row(
                          children: [
                            Expanded(
                              child: Card(
                                elevation: 5,
                                color: Colors.grey.shade200,
                                child: SizedBox(height: 500),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Card(
                                elevation: 5,
                                color: Colors.grey.shade200,
                                child: SizedBox(height: 500),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: Row(
                          children: [
                            Expanded(
                              child: Card(
                                elevation: 5,
                                color: Colors.grey.shade200,
                                child: SizedBox(height: 500),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: SizedBox(height: 500),
                            ),
                          ],
                        ),
                      )
                    ]),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
