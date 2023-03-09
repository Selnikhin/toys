
import 'package:flutter/material.dart';
import 'package:toys/models/category_model.dart';
import 'package:toys/widgets/appbar.dart';
import 'package:toys/widgets/product_card.dart';
import '../models/product_model.dart';
import '../widgets/custom_navbar.dart';



class CatalogScreen extends StatelessWidget {
  static const String routeName = '/catalog';

  static Route route ({required Category category}) {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => CatalogScreen (category: category),
    );
  }
  final Category category;
  const CatalogScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProducts = Product.products.where((product) => product.category == category.name).toList();
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
                products: categoryProducts[index],
                widthFactor: 2.2,
              ),
            );
          }
          ),

    );
  }
}
