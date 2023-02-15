import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:toys/widgets/appbar.dart';
import '../models/top_product.dart';
import '../widgets/custom_navbar.dart';

class RabbitAndBear extends StatefulWidget {
  static const String routeName = '/rabbit_and_bear';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const RabbitAndBear(),
    );
  }

  const RabbitAndBear({Key? key}) : super(key: key);

  @override
  State<RabbitAndBear> createState() => _RabbitAndBearState();
}

class _RabbitAndBearState extends State<RabbitAndBear> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    CarouselController carouselController = CarouselController();
    int currentIndex = 0;
    return Scaffold(
      appBar: const AppBarCust(title: 'Зайка и Мишка'),
      bottomNavigationBar: CustomNavBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                Container(
                  height: size.height / 2 - 50,
                  width: size.width,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/rabbit_and_bear_view');
                    },
                    child: CarouselSlider(
                      items: listRabbitAndBear
                          .map(
                            (item) => ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                item['rabbit_and_bear'],
                                fit: BoxFit.cover,
                                width: size.width,
                                height: size.height,
                              ),
                            ),
                          )
                          .toList(),
                      carouselController: carouselController,
                      options: CarouselOptions(
                          scrollPhysics: const BouncingScrollPhysics(),
                          autoPlay: false,
                          aspectRatio: 1,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentIndex = index;
                            });
                          }),
                    ),
                  ),
                ),
                Positioned(
                  left: size.width / 2 - 120,
                  right: size.width / 2 - 120,
                  bottom: 10,
                  child: MaterialButton(
                    onPressed: () {},
                    height: 40,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.purpleAccent,
                    child: const Text(
                      'Добавить в корзину',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Positioned(
                    right: size.width / 20 - 10,
                    top: size.height / 4,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 25,
                    )),
                Positioned(
                    left: size.width / 20 - 10,
                    top: size.height / 4,
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 25,
                    )),
              ]),
              const SizedBox(height: 5),
              Container(
                width: size.width,
                height: size.height / 18,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      'Зайка и Мишка',
                      style: TextStyle(color: Colors.white, fontSize: 23),
                    ),
                    const Text(
                      '4500 руб.',
                      style: TextStyle(
                          color: Colors.greenAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Вязаный плюшевый мишка и зайка идеально подойдет как подарок для ребенка любого возраста.'
                ' Эта мягкая игрушка станет приятным спутником на прогулке и любимым другом во время сюжетных игр или сна.'
                ' Вязаный мишка выполнен в ручную и декорирован крачивым платицем. Он легко впишется в любой интерьер и поможет создать уютную атмосферу в детской комнате.'
                ' Так же милый плюшевый зайка амигуруми может быть отличным подарком любимой девушке или подруге на памятную дату.',
                style: TextStyle(
                  fontFamily: 'Sriracha',
                ),
              ),
              const Text(
                'Парметры',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'Sriracha'),
              ),
              const Text(
                'Высота            40см \n ширина          30см \n Цвета      Бежевый, розовый, бодовый, серый',
                style: TextStyle(fontFamily: 'Sriracha'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RabbitAndBearView extends StatefulWidget {
  static const String routeName = '/rabbit_and_bear_view';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const RabbitAndBearView(),
    );
  }

  const RabbitAndBearView({Key? key}) : super(key: key);

  @override
  State<RabbitAndBearView> createState() => _RabbitAndBearViewState();
}

class _RabbitAndBearViewState extends State<RabbitAndBearView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    CarouselController carouselController = CarouselController();
    int currentIndex = 0;
    return Scaffold(
      appBar: AppBarCust(title: ''),
      body: Center(
        child: Stack(children: [
          CarouselSlider(
            items: listRabbitAndBear
                .map(
                  (item) => ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      item['rabbit_and_bear'],
                    ),
                  ),
                )
                .toList(),
            carouselController: carouselController,
            options: CarouselOptions(
                scrollPhysics: const BouncingScrollPhysics(),
                autoPlay: false,
                aspectRatio: 1,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                }),
          ),
          Positioned(
              right: size.width / 20 - 10,
              top: size.height / 4,
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 25,
              )),
          Positioned(
              left: size.width / 20 - 10,
              top: size.height / 4,
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 25,
              )),
        ]),
      ),
    );
  }
}
