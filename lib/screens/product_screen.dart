import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toys/models/product_model.dart';
import '../bloc/cart_blocs/cart_bloc.dart';
import '../bloc/wishlist_blocs/wishlist_bloc.dart';
import '../widgets/appbar.dart';
import '../widgets/custom_navbar.dart';

class ProductScreen extends StatefulWidget {
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
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int selectedImage = 0;
  int? selectedColor;
  int quantity = 1;

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
                  borderRadius: BorderRadius.circular(20),
                ),
                width: size.width,
                height: size.height / 20,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.orange),
                  ),
                  onPressed: () {
                    final snackBar =
                        SnackBar(content: Text('Добавленно в корзину'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    context.read<CartBloc>().add(AddProduct(widget.products));
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
      appBar: AppBarCust(title: widget.products.name),
      bottomNavigationBar: CustomNavBar(),
      body: ListView(
        children: [
          Hero(
            tag: widget.products.name,
            child: Container(
              height: size.height / 2 - 40,
              //padding: const EdgeInsets.all(10),
              child: Image.asset(
                widget.products.listImagesPr[selectedImage],
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            right: 50,
            top: 10,
            child: IconButton(
                onPressed: () {
                    context
                      .read<WishlistBloc>()
                      .add(AddPrToWishlist(widget.products));
                  final snackBar =
                  SnackBar(content: Text('Добавленно в избранное'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                icon: Icon(
                  Icons.favorite_border_outlined,
                  size: 35,
                  color: Colors.red,
                )),
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ...List.generate(
                widget.products.listImagesPr.length,
                (index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedImage = index;
                    });
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Image.asset(
                        widget.products.listImagesPr[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
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
                    width: size.width,
                    height: size.height / 28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.purpleAccent,
                    ),
                    alignment: Alignment.center,
                    child: Center(
                      child: Text(
                        '${widget.products.price} Руб',
                        style: TextStyle(color: Colors.white, fontSize: 20),
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
                  title: Text('${widget.products.description}'),
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
                  title: Text('${widget.products.parameters}'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
