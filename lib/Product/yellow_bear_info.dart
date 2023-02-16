import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:toys/widgets/appbar.dart';
import '../models/top_product.dart';
import '../widgets/custom_navbar.dart';

class YellowBear extends StatefulWidget {
  static const String routeName = '/yellow_bear';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const YellowBear(),
    );
  }

  const YellowBear({Key? key}) : super(key: key);

  @override
  State<YellowBear> createState() => _YellowBearState();
}

class _YellowBearState extends State<YellowBear> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    CarouselController carouselController = CarouselController();
    int currentIndex = 0;
    return Scaffold(
      appBar: const AppBarCust(title: 'Желтый мишка'),
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
                      Navigator.pushNamed(context, '/yellow_bear_view');
                    },
                    child: CarouselSlider(
                      items: listYellowBear
                          .map(
                            (item) => ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            item ['yellow_bear'],
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
                      'Желтый мишка',
                      style: TextStyle(color: Colors.white, fontSize: 23),
                    ),
                    const Text(
                      '2000 руб.',
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
                'Медведь плюшевый для мальчиков и девочек вязанный крючком хочет стать вашим другом.'
                    ' Вязаная игрушка Амигуруми плюшевый мишка - отличный подарок для девочки, мальчика, любимой, маме,'
                    ' сестре, подруге на день рождения, 8 марта, выписку из роддома, рождение малыша.'
                    ' Мягкая игрушка антистресс не оставит равнодушными ни малышей, ни взрослых. '
                    'Авторские игрушки полностью ручной работы из мягкой плюшевой пряжи не вызывают аллергию '
                    'и поражают воображение своей воздушностью.',
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
                'Высота            40см \n ширина          30см \n Цвета        Желтый',
                style: TextStyle(fontFamily: 'Sriracha'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class YellowBearView extends StatefulWidget {
  static const String routeName = '/yellow_bear_view';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const YellowBearView(),
    );
  }

  const YellowBearView({Key? key}) : super(key: key);

  @override
  State<YellowBearView> createState() => _YellowBearViewState();
}

class _YellowBearViewState extends State<YellowBearView> {
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
            items: listYellowBear
                .map(
                  (item) => ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  item['yellow_bear'],
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
