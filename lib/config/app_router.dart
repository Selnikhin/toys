import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:toys/screens/cart.dart';
import 'package:toys/screens/home_screen.dart';
import '../Product_info/beige_bear_info.dart';
import '../Product_info/blue_bear_info.dart';
import '../Product_info/brown_bear_info.dart';
import '../Product_info/grey_rabbit_info.dart';
import '../Product_info/pink_bear_info.dart';
import '../Product_info/rabbit_and_bear_info.dart';
import '../Product_info/yellow_bear_info.dart';
import '../models/category_model.dart';
import '../screens/catalog_screen.dart';
import '../screens/collection_toys_page.dart';
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
      case CatalogScreen.routeName:
        return CatalogScreen.route(category: settings.arguments as Categories);
      case CollectionToysPage.routeName:
        return CollectionToysPage.route();
      case WishlistScreen.routeName:
        return WishlistScreen.route();
      case PinkBear.routeName:
        return PinkBear.route();
      case PinkBearView.routeName:
        return PinkBearView.route();
      case BeigeBear.routeName:
        return BeigeBear.route();
      case BeigeBearView.routeName:
        return BeigeBearView.route();
      case BlueBear.routeName:
        return BlueBear.route();
      case BlueBearView.routeName:
        return BlueBearView.route();
      case BrownBear.routeName:
        return BrownBear.route();
      case BrownBearView.routeName:
        return BrownBearView.route();
      case YellowBear.routeName:
        return YellowBear.route();
      case YellowBearView.routeName:
        return YellowBearView.route();
      case RabbitAndBear.routeName:
        return RabbitAndBear.route();
      case RabbitAndBearView.routeName:
        return RabbitAndBearView.route();
      case GreyRabbit.routeName:
        return GreyRabbit.route();
      case GreyRabbitView.routeName:
        return GreyRabbitView.route();


      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: RouteSettings(name: '/error'),
      builder: (_) => Scaffold(appBar: AppBar(title: Text('Ошибка'),),),
    );
  }
}