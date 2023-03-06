import 'package:flutter/material.dart';
import 'package:toys/widgets/product_card.dart';

import '../models/product_model.dart';

class ProductCarousel extends StatelessWidget {
  final List<Product> products;

  const ProductCarousel({Key? key,required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 230,
      child: ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(
          horizontal: 5,
          vertical: 10,
        ),
        scrollDirection: Axis.horizontal,

        itemCount: products.length, // products[index].images.length
        itemBuilder: (context, index){
          return Padding(padding: EdgeInsets.only(right: 5),
            child: ProductCard( products: products[index]),);
        },
      ),
    );
  }
}
