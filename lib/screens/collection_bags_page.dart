import 'package:flutter/material.dart';
import 'package:toys/widgets/appbar.dart';
import '../widgets/custom_navbar.dart';
import '../widgets/product_view.dart';

class CollectionBagsPage extends StatefulWidget {

  static const String routeName = '/collection_bags';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => CollectionBagsPage(),
    );
  }
  const CollectionBagsPage({Key? key}) : super(key: key);

  @override
  State<CollectionBagsPage> createState() => _CollectionBagsPageState();
}

class _CollectionBagsPageState extends State<CollectionBagsPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBarCust(title: 'Клекция сумок',),
      bottomNavigationBar: CustomNavBar(),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  GestureDetector(
                    onTap: (){},
                    child: ProductView(
                        image: 'assets/images/bags/brown_bag/brown_bag 0.png',
                        name: 'Бежевая сумка',
                        price: '4000'),
                  ),
                  ProductView(
                      image: 'assets/images/bags/circular_bag/circular_bag 0.png',
                      name: 'Круглая сумка',
                      price: '3500'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ProductView(
                      image: 'assets/images/bags/backpack/backpack 0.png',
                      name: 'Рюкзак',
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
      ),
    );
  }
}
