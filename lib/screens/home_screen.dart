import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toys/models/category_model.dart';
import 'package:toys/widgets/product_carusel.dart';
import 'package:toys/widgets/section_title.dart';
import '../bloc/category_blocs/category_bloc.dart';
import '../bloc/product_blocs/product_bloc.dart';
import '../models/product_model.dart';
import '../widgets/appbar.dart';
import '../widgets/carousel_card.dart';
import '../widgets/custom_navbar.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => HomeScreen(),
    );
  }

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBarCust(title: ''),
      bottomNavigationBar: CustomNavBar(),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: size.height / 8,
                width: size.width / 2,
                child: Image.asset(
                  'assets/images/Knitted Dreams.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                child: Text(
                  'Вязанные\n Фантазии',
                  style: TextStyle(
                    fontSize: 34,
                  ),
                ),
              )
            ],
          ),
          SectionTitle(title: 'Каталоги товаров'),
          BlocBuilder<CategoryBloc, CategoryState>(
            builder: (context, state) {
              if (state is CategoryLoading) {
                return Center(child: CircularProgressIndicator());
              }
              if (state is CategoryLoaded) {
                return CarouselSlider(
                  options: CarouselOptions(
                    aspectRatio: 1.5,
                    viewportFraction: 0.9,
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    autoPlay: true,
                  ),
                  items: state.categories
                      .map((category) => CarouselCard(category: category))
                      .toList(),
                );
              } else {
                return Text('ошибка');
              }
            },
          ),
          SizedBox(height: 5),
          SectionTitle(title: 'Хиты продаж'),
          BlocBuilder<ProductBloc, ProductState>(
            builder: (context, state) {
              if (state is ProductLoading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is ProductLoaded) {
                return
                  ProductCarousel(
                  products: state.products
                      .where((product) => product.isPopular)
                      .toList(),
                );
              } else {
                return Text('error');
              }
            },
          ),
        ],
      ),
    );
  }
}
