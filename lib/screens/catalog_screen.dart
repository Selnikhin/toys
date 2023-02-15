
import 'package:flutter/material.dart';
import 'package:toys/models/category_model.dart';
import 'package:toys/widgets/appbar.dart';
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
    return  Scaffold(
      appBar:  AppBarCust(title:category.name),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
