import 'package:flutter/material.dart';
import 'package:toys/widgets/product_card.dart';

import '../models/product_model.dart';

class ProductCarousel extends StatelessWidget {
  final List<Products> products;

  const ProductCarousel({Key? key,required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 210,
      child: ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(
          horizontal: 5,
          vertical: 10,
        ),
        scrollDirection: Axis.horizontal,

        itemCount: products.length,
        itemBuilder: (context, index){
          return Padding(padding: EdgeInsets.only(right: 5),
            child: ProductCard( product: products[index]),);
        },
      ),
    );
  }
}
