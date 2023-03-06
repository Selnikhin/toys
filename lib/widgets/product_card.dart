import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/cart_blocs/cart_bloc.dart';
import '../models/product_model.dart';

class ProductCard extends StatelessWidget {
  final Product products;
  final double widthFactor;

  const ProductCard({
    Key? key,
    required this.products,
    this.widthFactor = 2.5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/product', arguments: products);
        },
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: size.width / widthFactor,
                  height: size.height / 6 ,
                  child: Image.asset(products.images,fit: BoxFit.cover,),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: BlocBuilder<CartBloc, CartState>(
                    builder: (context, state) {
                      if (state is CartLoading) {
                        return Center(child: CircularProgressIndicator());
                      }
                      if (state is CartLoaded) {
                        return IconButton(
                          onPressed: () {
                            final snackBar = SnackBar(content: Text('Добавленно в корзину'));
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                            context
                                .read<CartBloc>()
                                .add(AddProduct(products));
                          },
                          icon: Icon(
                            Icons.add_circle,
                            color: Colors.white,
                          ),
                        );
                      } else {
                        return Text('Что то пошло не так !!!');
                      }
                    },
                  ),
                ),
              ],
            ),
            Container(
              width: size.width / 2.5 - 20,
              height: 55,
              child: Column(
                children: [
                  SizedBox(height: 3),
                  Text(
                    products.name,
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                  //SizedBox(height: 3),
                  Text(
                    '${products.price} руб',
                    style: TextStyle(color: Colors.blue, fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
