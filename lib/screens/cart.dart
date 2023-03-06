import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toys/bloc/cart_blocs/cart_bloc.dart';

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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomSheet: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          if (state is CartLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is CartLoaded) {
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: Colors.red),
                width: size.width,
                height: size.height / 20,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStatePropertyAll<Color>(Colors.orange),
                  ),
                  onPressed: () {},
                  child: Align(
                      child: Text('Перейти к оформлению         ${state.cart.total} Руб',)),
                ),
              ),
            );
          } else {
            return Text('Что то пошло не так !!!');
          }
        },
      ),
      appBar: AppBarCust(
        title: 'Корзина',
      ),
      bottomNavigationBar: CustomNavBar(),
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          if (state is CartLoading) {
            //если карта загружется
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is CartLoaded) {
            // если карта загруженна
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                  itemCount: state.cart
                      .productQuantity(state.cart.products)
                      .keys
                      .length,
                  itemBuilder: (context, index) {
                    return CartProductCard(
                      products: state.cart
                          .productQuantity(state.cart.products)
                          .keys // представляет ключ продукта
                          .elementAt(index),
                      quantity: state.cart
                          .productQuantity(state.cart.products)
                          .values // представляет количество продуктов
                          .elementAt(index),
                    );
                  }),
            );
          } else {
            return Text('Что то пошло не так!'); // вернем текст, если ошибка
          }
        },
      ),
    );
  }
}
