import 'package:equatable/equatable.dart';
import 'package:toys/models/product_model.dart';

class Wishlist extends Equatable {
  final List<Product> products_all;

  const Wishlist({this.products_all = const <Product>[]});

  @override

  List<Object?> get props =>[products_all];
}