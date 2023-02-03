import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget appBarCustom(BuildContext) {
  return Padding(
    padding: EdgeInsets.fromLTRB(12, 52, 12, 0),
    child: Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(FontAwesomeIcons.barsStaggered),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(FontAwesomeIcons.cartShopping),
        ),
      ],
    ),
  );
}