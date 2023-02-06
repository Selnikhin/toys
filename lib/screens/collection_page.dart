import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../colors.dart';
import '../widgets/product_view.dart';

class CollectionPage extends StatefulWidget {
  const CollectionPage({Key? key}) : super(key: key);

  @override
  State<CollectionPage> createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: lightBlue,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.barsStaggered,
            color: Colors.black,
          ),
        ),
        actions: [
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.heart,
              color: Colors.red,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.cartShopping,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProductView(
                    image: 'assets/images/beige_bear/beige_bear 0.png',
                    name: 'Бежевый мишка',
                    price: '3000'),
                ProductView(
                    image: 'assets/images/blue_bear/blue_bear 0.png',
                    name: 'Мишка в синем комбезе',
                    price: '3000'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProductView(
                    image: 'assets/images/pink_bear/pink_bear 0.png',
                    name: 'Мишка в розовом',
                    price: '3500'),
                ProductView(
                    image: 'assets/images/bags/red_bag/red_bag 1.png',
                    name: 'Красная сумка',
                    price: '4500'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProductView(
                    image: 'assets/images/bags/blue_clutch/blue_clutch 0.png',
                    name: 'Синий клатч',
                    price: '3000'),
                ProductView(
                    image: 'assets/images/bags/blue_bag/blue_bag 0.png',
                    name: 'Голубая сумка',
                    price: '4500'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
