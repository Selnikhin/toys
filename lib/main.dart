import 'package:flutter/material.dart';
import 'package:toys/screens/collection_page.dart';
import 'package:toys/screens/home_screen.dart';

import 'colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toys',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Marutya',
        primaryColor:lightBlue ,
       scaffoldBackgroundColor: lightBlue,
      ),

      home:  CollectionPage(),
    );
  }
}
