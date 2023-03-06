import 'package:equatable/equatable.dart';
import 'package:toys/models/product_model.dart';

class Cart extends Equatable {
  final List<Product> products;

  const Cart({this.products = const <Product>[]});

  num get total =>
      products.fold(0, (total, current) => total + current.price);

  Map productQuantity(products) {
    // проверяем одинаковые товары или нет
    var quantity = Map();

    products.forEach((products) {
      if (!quantity.containsKey(products)) {
        quantity[products] = 1;
      } else {
        quantity[products] += 1;
      }
    });
    return quantity;
  }

  @override
  List<Object?> get props => [products];
}
