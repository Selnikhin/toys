part of 'cart_bloc.dart';

@immutable
abstract class CartEvent  extends Equatable{
  const CartEvent();
}
class LoadCart extends CartEvent {
  @override
  List<Object?> get props => [];
}

class AddProduct extends CartEvent {
  final Product products;
  const AddProduct(this.products);

  @override
  List<Object?> get props => [products];
}
class RemoveProduct extends CartEvent{
  final Product products;
  const RemoveProduct(this.products);

  @override
  // TODO: implement props
  List<Object?> get props =>  [products];
}
