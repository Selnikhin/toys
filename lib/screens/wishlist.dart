import 'package:flutter/material.dart';

import '../widgets/appbar.dart';
import '../widgets/custom_navbar.dart';

class WishlistScreen extends StatelessWidget {

  static const String routeName = '/wishlist';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => WishlistScreen(),
    );
  }
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBarCust(title: 'Избранное',),
        bottomNavigationBar: CustomNavBar()
    );
  }
}