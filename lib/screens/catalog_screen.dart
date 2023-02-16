
import 'package:flutter/material.dart';
import 'package:toys/models/category_model.dart';
import 'package:toys/widgets/appbar.dart';
import 'package:toys/widgets/product_card.dart';
import '../models/product_model.dart';
import '../widgets/custom_navbar.dart';
import '../widgets/product_view.dart';


class CatalogScreen extends StatelessWidget {
  static const String routeName = '/catalog';

  static Route route ({required Categories category}) {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => CatalogScreen (category: category),
    );
  }
  final Categories category;
  const CatalogScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final List<Products> categoryProducts = Products.products_all.where((product) => product.category == category.name).toList();
    return  Scaffold(
      appBar:  AppBarCust(title:category.name),
      bottomNavigationBar: CustomNavBar(),
      body:
      GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1),
          itemCount: categoryProducts.length,

          itemBuilder:(BuildContext context, int index){
            return Center(
              child: ProductCard(
                product: categoryProducts[index],
                widthFactor: 2.2,
              ),
            );
          }),

    );
  }
}
