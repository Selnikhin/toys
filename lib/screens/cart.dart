import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toys/models/cart_model.dart';
import 'package:toys/models/product_model.dart';

import '../Product/cart_product.dart';
import '../widgets/appbar.dart';
import '../widgets/custom_navbar.dart';

class CartScreen extends StatelessWidget {

  static const String routeName = '/cart';
  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => CartScreen(),
    );
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return  Scaffold(bottomSheet:
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:Colors.red),
        width: size.width ,
        height: size.height/15,
        child: ElevatedButton(style: ButtonStyle(backgroundColor:  MaterialStatePropertyAll<Color>(Colors.orange),) ,
        onPressed: (){},
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Перейти к оформлению'),
            Text('${Cart().total} Руб'),
          ],
        ),
      ),
      ),
    ),
        appBar: AppBarCust(title: 'Корзина',),
    bottomNavigationBar: CustomNavBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),


          child: ListView.builder(itemCount: Cart.products_cart.length,
              itemBuilder: (context, index) { return CartProductCard(products_all: Cart.products_cart[index]);

              }) ),
        );

        // Column(children: [
        //   CartProductCard(products_all: Products.products_all[0]),
        //   CartProductCard(products_all: Products.products_all[1]),
        // ],





  }
}
