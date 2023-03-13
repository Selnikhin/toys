import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/cart_blocs/cart_bloc.dart';
import '../models/product_model.dart';

class CartProductCard extends StatelessWidget {
  final Product products;
  final int quantity;

  const CartProductCard(
      {Key? key, required this.products, required this.quantity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        width: size.width,
        height: size.height / 6,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                products.images,
                width: 140,
                height: 130,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(products.name,style: TextStyle(fontSize: 14),),
                  SizedBox(height: 5),
                  Text('${products.price}',style: TextStyle(color: Colors.blue,fontSize: 20),),
                ],
              ),
            ),
            BlocBuilder<CartBloc, CartState>(
              builder: (context, state) {
                return Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          context
                              .read<CartBloc>()
                              .add(RemoveProduct(products));
                        },
                        icon: Icon(Icons.remove_circle)),
                    Text('$quantity'),
                    IconButton(
                        onPressed: () {
                          context
                              .read<CartBloc>()
                              .add(AddProduct(products));
                        },
                        icon: Icon(Icons.add_circle)),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
