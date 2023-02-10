import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../colors.dart';

class AppBarCust extends StatelessWidget with PreferredSizeWidget {
  final String title;
  const AppBarCust({
    Key? key, required this.title
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: lightBlue,
      elevation: 0,
     title : Center(
       child: Container(
         padding: EdgeInsets.symmetric(
           horizontal: 20,
           vertical: 10
         ),
         child: Text(
           title,style: TextStyle(fontSize: 24,color: Colors.purple),
         ),
       ),
     ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/wishlist');
          },
          icon: const Icon(
            FontAwesomeIcons.heart,
            color: Colors.red,
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50);
}
