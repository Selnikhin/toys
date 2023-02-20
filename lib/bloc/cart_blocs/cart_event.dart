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
  final Products products_all;
  const AddProduct(this.products_all);

  @override
  List<Object?> get props => [products_all];
}
class RemoveProduct extends CartEvent{
  final Products products_all;
  const RemoveProduct(this.products_all);

  @override
  // TODO: implement props
  List<Object?> get props =>  [products_all];
}
