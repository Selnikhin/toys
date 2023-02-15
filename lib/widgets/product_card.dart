import 'package:flutter/material.dart';

import '../models/product_model.dart';

class ProductCard extends StatelessWidget {
  final bool? isFav;
  final Function()? onPressed;
  final Product product;
  final double widthFactor;

  const ProductCard(
      {Key? key,
      required this.product,
      this.widthFactor = 2.5,
      this.isFav = false,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: size.width / widthFactor,
              height: size.height / 6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(
                    product.images,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: onPressed,
                    icon: Icon(
                      isFav!
                          ? Icons.favorite_rounded
                          : Icons.favorite_outline_rounded,
                      size: 25,
                    )),
              ),
            ),
            Positioned(
                bottom: 0,
                right: 0,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_circle,
                    color: Colors.white,
                  ),
                )),
          ],
        ),
        Container(
          width: size.width / 2.5 - 10,
          height: 45,
          child: Column(
            children: [
              SizedBox(height: 5),
              Text(
                product.name,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 3),
              Text(
                '\ ${Product.products[0].price} руб',
                style: TextStyle(color: Colors.blue, fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
