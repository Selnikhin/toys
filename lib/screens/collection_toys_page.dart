import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toys/widgets/appbar.dart';

import '../colors.dart';
import '../widgets/custom_navbar.dart';
import '../widgets/product_view.dart';

class CollectionToysPage extends StatelessWidget {

  static const String routeName = '/collection_toys';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => CollectionToysPage(),
    );
  }
  const CollectionToysPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBarCust(title: 'Колекция игрушек',),
      bottomNavigationBar: CustomNavBar(),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  ProductView(
                      image: 'assets/images/blue_bear/blue_bear 0.png',
                      name: 'Мишка в синем комбезе',
                      price: '3500'),
                  ProductView(
                      image: 'assets/images/beige_bear/beige_bear 0.png',
                      name: 'Бежевый мишка',
                      price: '3000'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ProductView(
                      image: 'assets/images/pink_bear/pink_bear 1.png',
                      name: 'Мишка в розовом',
                      price: '3500'),
                  ProductView(
                      image: 'assets/images/brown_bear/brown_bear 1.png',
                      name: 'Коричневый мишка',
                      price: '2000'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductView(
                      image: 'assets/images/yellow_bear/yellow_bear 0.png',
                      name: 'Желтенький Мишка',
                      price: '2000'),
                  ProductView(
                      image: 'assets/images/rabbit_and_bear/rabbit_and_bear 0.png',
                      name: 'Зайка и Мишка',
                      price: '4500'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
