import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../colors.dart';
import '../models/top_produkt.dart';
import '../widgets/product_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 150,
                  width: 220,
                  child: Image.asset(
                    'assets/images/Knitted Dreams.png',
                  ),
                ),
                Container(
                  child: Text(
                    'Вязанные\n Фантазии',
                    style: TextStyle(
                      fontSize: 35,
                    ),
                  ),
                )
              ],
            ),
            Stack(
              children: [
                Container(
                  height: size.height / 2.4 - 40,
                  width: size.width - 40,
                  child: CarouselSlider(
                    items: listTopProduct
                        .map(
                          (item) => ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              item['image_path'],
                              fit: BoxFit.cover,
                              width: size.width,
                              height: size.height,
                            ),
                          ),
                        )
                        .toList(),
                    carouselController: carouselController,
                    options: CarouselOptions(
                        scrollPhysics: BouncingScrollPhysics(),
                        autoPlay: true,
                        aspectRatio: 1,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentIndex = index;
                          });
                        }),
                  ),
                ),
                Positioned(
                  left: size.width / 2 - 80,
                  right: size.width / 2 - 80,
                  bottom: 15,
                  child: MaterialButton(
                    onPressed: () {},
                    height: 35,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    color: Colors.purpleAccent,
                    child: Text(
                      'Купить',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Каталоги',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: size.height / 8 - 45,
                    width: size.width / 2 - 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/bear blue.png',
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Вязанные \n Игрушки',
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: size.height / 8 - 45,
                    width: size.width / 2 - 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/red_bag 0.png',
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Вязанные \n Сумки',
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
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
                          image: 'assets/images/blue_bear/blue_bear 0.png',
                          name: 'Мишка в синем комбезе',
                          price: '3500'),
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
                          image: 'assets/images/blue_bear/blue_bear 0.png',
                          name: 'Мишка в синем комбезе',
                          price: '3500'),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
