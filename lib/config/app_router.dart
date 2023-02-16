import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toys/screens/cart.dart';
import 'package:toys/screens/home_screen.dart';
import '../Product/product_screen.dart';
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

      case CartPage.routeName:
        return CartPage.route();
      case ProductScreen.routeName:
        return ProductScreen.route(product: settings.arguments as  Products);
      case CatalogScreen.routeName:
        return CatalogScreen.route(category: settings.arguments as Categories);
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
