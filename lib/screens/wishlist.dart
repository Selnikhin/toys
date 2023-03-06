import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toys/bloc/wishlist_blocs/wishlist_bloc.dart';

import '../widgets/appbar.dart';
import '../widgets/custom_navbar.dart';
import '../widgets/product_card.dart';

class WishlistScreen extends StatelessWidget {
  static const String routeName = '/wishlist';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => WishlistScreen(),
    );
  }

  const WishlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCust(
        title: 'Избранное',
      ),
      bottomNavigationBar: CustomNavBar(),
      body:
      BlocBuilder<WishlistBloc, WishlistState>(
        builder: (context, state) {
          if (state is WishlistLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is WishlistLoaded) {
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 1),
              itemCount: state.wishlist.products.length,
              itemBuilder: (BuildContext context, int index) {
                return Center(
                  child: ProductCard(
                    products:state.wishlist.products[index],
                    widthFactor: 2.2,
                    //isFav: true,
                  ),
                );
              },
            );
          } else {
            return Text('Something went wrong');
          }
        },
      ),
    );
  }
}
