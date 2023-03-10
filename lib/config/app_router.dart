import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toys/screens/cart.dart';
import 'package:toys/screens/home_screen.dart';
import '../screens/product_screen.dart';
import '../models/category_model.dart';
import '../models/product_model.dart';
import '../screens/catalog_screen.dart';
import '../screens/wishlist.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('Route: ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case ProductScreen.routeName:
        return ProductScreen.route(product: settings.arguments as  Product);
      case CatalogScreen.routeName:
        return CatalogScreen.route(category: settings.arguments as Category);
      case WishlistScreen.routeName:
        return WishlistScreen.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text('Ошибка'),
        ),
      ),
    );
  }
}
