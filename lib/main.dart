import 'package:crm/Pages/leads_page.dart';
import 'package:crm/tabbar.dart';

import './Pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CRM',
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w200,
            color: Colors.white,
          ),
        ),
        primaryColorLight: Color.fromARGB(255, 238, 247, 255),
        accentColor: Color.fromARGB(221, 39, 39, 39),
        primaryColor: Colors.grey,
        primarySwatch: Colors.grey,
      ),
      home: Tabbar(),
    );
  }
}
