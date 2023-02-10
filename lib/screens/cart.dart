import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/appbar.dart';
import '../widgets/custom_navbar.dart';

class CartPage extends StatelessWidget {

  static const String routeName = '/cart';
  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => CartPage(),
    );
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBarCust(title: 'Корзина',),
    bottomNavigationBar: CustomNavBar());
  }
}
