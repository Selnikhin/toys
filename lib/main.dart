import 'package:flutter/material.dart';
import 'package:toys/config/app_router.dart';


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
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: HomeScreen.routeName,

      home: HomeScreen(),
    );
  }
}
