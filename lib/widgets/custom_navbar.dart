import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.grey[800],
      child: Container(


        height: 50,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                icon: Icon(FontAwesomeIcons.house,color: Colors.white)),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cart');
                },
                icon: Icon(FontAwesomeIcons.cartShopping,color: Colors.white)),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/user');
                },
                icon: Icon(FontAwesomeIcons.user,color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
