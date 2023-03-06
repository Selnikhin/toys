import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toys/bloc/wishlist_blocs/wishlist_bloc.dart';
import 'package:toys/models/product_model.dart';

import '../bloc/cart_blocs/cart_bloc.dart';
import '../widgets/appbar.dart';
import '../widgets/carousel_card.dart';
import '../widgets/custom_navbar.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = '/product';

  static Route route({required Product product}) {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => ProductScreen(products: product),
    );
  }

  final Product products;

  const ProductScreen({required this.products});

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
                    borderRadius: BorderRadius.circular(20), ),
                width: size.width,
                height: size.height / 20 ,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStatePropertyAll<Color>(Colors.orange),
                  ),
                  onPressed: () {
                    final snackBar = SnackBar(content: Text('Добавленно в корзину'));
                    ScaffoldMessenger.of(context)
                        .showSnackBar(snackBar);
                    context
                        .read<CartBloc>()
                        .add(AddProduct(products));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Добавить в корзину'),

                    ],
                  ),
                ),
              ),
            );
          } else {
            return Text('Что то пошло не так !!!');
          }
        },
      ),
      appBar: AppBarCust(title: products.name),
      bottomNavigationBar: CustomNavBar(),
      body: ListView(
        children: [
          Stack(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 1.1,
                  viewportFraction: 0.9,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  autoPlay: true,
                ),
                items:
                [
                  CarouselCard(
                    product: products,
                  ),
                ],
              ),Positioned(right: 50,top: 10,
                  child: IconButton(
                  onPressed: (){ context
                      .read<WishlistBloc>()
                      .add(AddPrToWishlist(products));
                  final snackBar =
                  SnackBar(content: Text('Добавленно в избранное'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);

                  },icon: Icon(Icons.favorite_border_outlined,size: 35,color: Colors.red,)),

                    ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Stack(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.all(5),
                    width: size.width ,
                    height: size.height / 28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.purpleAccent,
                    ),
                    alignment: Alignment.center,
                    child: Center(
                      child: Text(
                        '${products.price} Руб',
                        style: TextStyle(color: Colors.white, fontSize:20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ExpansionTile(
              initiallyExpanded: true,
              title: Text(
                'Описание',
                style: TextStyle(color: Colors.black),
              ),
              children: [
                ListTile(
                  title: Text(
                    'Вязаный плюшевый мишка идеально подойдет как подарок для ребенка любого возраста.'
                    ' Эта мягкая игрушка станет приятным спутником на прогулке и любимым другом во время сюжетных игр или сна.'
                    ' Вязаный мишка выполнен в ручную и декорирован  синим комбезом. Он легко впишется в любой интерьер и поможет создать уютную атмосферу в детской комнате.'
                    ' Так же милый плюшевый зайка амигуруми может быть отличным подарком любимой девушке или подруге на памятную дату.',
                    style: TextStyle(
                      fontFamily: 'Sriracha',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ExpansionTile(
              initiallyExpanded: true,
              title: Text(
                'Параметры',
                style: TextStyle(color: Colors.black),
              ),
              children: [
                ListTile(
                  title: Text(
                    'Высота            40см \n ширина          30см \n Цвета        Бежевый,синий',
                    style: TextStyle(
                      fontFamily: 'Sriracha',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
