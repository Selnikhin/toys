import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toys/bloc/cart_blocs/cart_bloc.dart';
import 'package:toys/bloc/wishlist_blocs/wishlist_bloc.dart';
import 'package:toys/config/app_router.dart';


import 'package:toys/screens/home_screen.dart';


import 'colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider(create: (_) => CartBloc()..add(LoadCart())),
        // BlocProvider(create: (context)=>CheckoutBloc(
        //   cartBloc: context.read<CartBloc>(),
        //   checkoutRespository: CheckoutRespository())),
        BlocProvider(create: (_) => WishlistBloc()..add(LoadWishlist())),
      ],
      child: MaterialApp(
        title: 'Toys',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Marutya',
          primaryColor: lightBlue,
          scaffoldBackgroundColor: lightBlue,
        ),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: HomeScreen.routeName,

        home: HomeScreen(),
      ),
    );
  }
}
