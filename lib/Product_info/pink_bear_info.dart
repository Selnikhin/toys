import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:toys/widgets/appbar.dart';
import '../models/top_product.dart';
import '../widgets/custom_navbar.dart';

class PinkBear extends StatefulWidget {
  static const String routeName = '/pink_bear';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const PinkBear(),
    );
  }

  const PinkBear({Key? key}) : super(key: key);

  @override
  State<PinkBear> createState() => _PinkBearState();
}

class _PinkBearState extends State<PinkBear> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    CarouselController carouselController = CarouselController();
    int currentIndex = 0;
    return Scaffold(
      appBar: const AppBarCust(title: 'Розовый мишка'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                Container(
                  height: size.height / 2,
                  width: size.width,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/pink_bear_view');
                    },
                    child: CarouselSlider(
                      items: listPinkBear
                          .map(
                            (item) => ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            item['pink_bear'],
                            fit: BoxFit.cover,
                            width: size.width ,
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
                Positioned(right: size.width /20 -10,
                    top: size.height/4,
                    child: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 25,)),
                Positioned(left: size.width /20 -10,
                    top: size.height/4,
                    child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 25,)),
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
                      'Розовый мишка',
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
                'Вязаный плюшевый мишка идеально подойдет как подарок для ребенка любого возраста.'
                    ' Эта мягкая игрушка станет приятным спутником на прогулке и любимым другом во время сюжетных игр или сна.'
                    ' Вязаный мишка выполнен в ручную и декорирован крачивым платицем. Он легко впишется в любой интерьер и поможет создать уютную атмосферу в детской комнате.'
                    ' Так же милый плюшевый зайка амигуруми может быть отличным подарком любимой девушке или подруге на памятную дату. ',
                style: TextStyle(
                  fontFamily: 'Sriracha',
                ),
              ),
              const Text('Парметры',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,fontFamily: 'Sriracha' ),),
              const Text('Высота            40см \n ширина          30см \n Цвета      Бежевый, розовый, бодовый',style: TextStyle(
                  fontFamily: 'Sriracha'
              ),)
            ],
          ),
        ),
      ),
    );
  }
}class PinkBearView extends StatefulWidget {
  static const String routeName = '/pink_bear_view';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const  PinkBearView(),
    );
  }
  const PinkBearView({Key? key}) : super(key: key);

  @override
  State<PinkBearView> createState() => _PinkBearViewState();
}

class _PinkBearViewState extends State<PinkBearView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    CarouselController carouselController = CarouselController();
    int currentIndex = 0;
    return  Scaffold(
      appBar: AppBarCust(title: ''),
      bottomNavigationBar: CustomNavBar(),
      body: Stack(children: [
        CarouselSlider(
          items: listPinkBear
              .map(
                (item) => ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                item['pink_bear'],



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
        Positioned(right: size.width /20 -10,
            top: size.height/4,
            child: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 25,)),
        Positioned(left: size.width /20 -10,
            top: size.height/4,
            child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 25,)),
      ]),
    );
  }
}

