import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../colors.dart';
import '../models/top_produkt.dart';

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
                    height: size.height / 8 - 15,
                    width: size.width / 2 - 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/bear blue.png',
                        ),
                        // SizedBox(height: ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Вязанные \n Игрушки',
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: size.height / 8 - 15,
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
                            style: TextStyle(fontSize: 14),
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
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // children: [
                //   Column(
                //     children: [
                //       Container(
                //         height: 220,
                //         width: 190,
                //         decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(15),
                //             color: Colors.white,
                //             image: DecorationImage(
                //                 image: AssetImage(
                //                     'assets/images/bags/red_bag/red_bag 1.png'),
                //                 fit: BoxFit.cover)),
                //         child: Align(
                //           alignment: Alignment.topRight,
                //           child: IconButton(
                //             onPressed: () {},
                //             icon: Icon(Icons.favorite_border_outlined,
                //                 color: Colors.red, size: 25),
                //           ),
                //         ),
                //       ),
                //       SizedBox(height: 10),
                //       Text.rich(TextSpan(
                //         text: 'Красная сумка \n 4500 руб',
                //         style: TextStyle(fontWeight: FontWeight.bold),
                //       )),
                //     ],
                //   ),
                //   SizedBox(height: 15),
                //   Container(
                //     height: 220,
                //     width: 190,
                //     decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(15),
                //         color: Colors.white,
                //         image: DecorationImage(
                //             image: AssetImage(
                //                 'assets/images/bags/red_bag/red_bag 1.png'),
                //             fit: BoxFit.cover)),
                //   ),
                // ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
