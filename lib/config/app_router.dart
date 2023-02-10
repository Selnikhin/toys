import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toys/screens/cart.dart';
import 'package:toys/screens/home_screen.dart';


import '../Product_info/pink_bear_info.dart';
import '../screens/collection_bags_page.dart';
import '../screens/collection_toys_page.dart';
import '../screens/wishlist.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings){
    print('This is route: ${settings.name}');

    switch(settings.name){
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case CartPage.routeName:
        return CartPage.route();
      case CollectionBagsPage.routeName:
        return CollectionBagsPage.route();
      case CollectionToysPage.routeName:
        return CollectionToysPage.route();
      case WishlistScreen.routeName:
        return WishlistScreen.route();
      case  PinkBear.routeName:
        return  PinkBear.route();
      case  PinkBearView.routeName:
        return  PinkBearView.route();


      default:
        return _errorRoute();
    }
  }
  static Route _errorRoute(){
    return MaterialPageRoute(
      settings: RouteSettings(name: '/error'),
      builder: (_) => Scaffold(appBar:AppBar( title: Text('Ошибка'),),),
    );
  }
}