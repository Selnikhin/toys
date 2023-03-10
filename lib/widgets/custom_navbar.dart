import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.grey[800],
      child: Container(
        height: 45,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isCurrent && route.settings.name != '/' ? false : true);
                },
                icon: Icon(FontAwesomeIcons.house, color: Colors.white)),
            IconButton(
              onPressed: () {
                //Navigator.popUntil(context, (route) => route.isCurrent && route.settings.name != '/wishlist' ? false : true);
                Navigator.pushNamed(context, '/wishlist');
              },
              icon: const Icon(
                FontAwesomeIcons.heartCircleCheck,
                color: Colors.white,
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cart');
                },
                icon: Icon(FontAwesomeIcons.cartShopping, color: Colors.white)),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/user');
                },
                icon: Icon(FontAwesomeIcons.user, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
