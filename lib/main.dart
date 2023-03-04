import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toys/bloc/cart_blocs/cart_bloc.dart';
import 'package:toys/bloc/category_blocs/category_bloc.dart';
import 'package:toys/bloc/product_blocs/product_bloc.dart';
import 'package:toys/bloc/wishlist_blocs/wishlist_bloc.dart';
import 'package:toys/config/app_router.dart';
import 'package:toys/repositories/category/category_repo.dart';
import 'package:toys/repositories/product/product_repo.dart';


import 'package:toys/screens/home_screen.dart';
import 'package:toys/screens/splash_sreen.dart';


import 'colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //BlocObserver.runZoned((){
    runApp(const MyApp());
 // },

}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CartBloc()..add(LoadCart())),
        BlocProvider(create: (_)=> CategoryBloc(categoryRepo: CategoryRepo(),)..add(LoadCategories())),
        BlocProvider(create: (_)=> ProductBloc(productRepo: ProductRepo(),)..add(LoadProducts())),
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
        initialRoute: SplashScreen.routeName,

        home: HomeScreen(),
      ),
    );
  }
}
