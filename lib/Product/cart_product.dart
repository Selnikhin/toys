import 'package:flutter/material.dart';

import '../models/product_model.dart';

class CartProductCard extends StatelessWidget {
  final Products products_all;

  const CartProductCard({Key? key, required this.products_all})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(width: size.width,
        height: size.height / 6,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(products_all.images,
                width: 140, height: 130,
                fit: BoxFit.cover,),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(products_all.name),
                  SizedBox(height: 10),
                  Text('${products_all.price}'),
                ],
              ),
            ),
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.remove_circle)),
                Text('1'),
                IconButton(onPressed: () {}, icon: Icon(Icons.add_circle)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

