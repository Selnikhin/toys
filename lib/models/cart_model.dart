import 'package:equatable/equatable.dart';
import 'package:toys/models/product_model.dart';

class Cart extends Equatable {
  final List<Product> products;

  const Cart({this.products = const <Product>[]});

  num get total =>
      products.fold(0, (total, current) => total + current.price);

  Map productQuantity(products_all) {
    // проверяем одинаковые товары или нет
    var quantity = Map();

    products_all.forEach((products_all) {
      if (!quantity.containsKey(products_all)) {
        quantity[products_all] = 1;
      } else {
        quantity[products_all] += 1;
      }
    });
    return quantity;
  }

  @override
  List<Object?> get props => [products];
}
