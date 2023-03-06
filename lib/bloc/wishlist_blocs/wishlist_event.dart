part of 'wishlist_bloc.dart';

@immutable
abstract class WishlistEvent extends Equatable {
  const WishlistEvent();

}
class LoadWishlist extends WishlistEvent {
  @override
  List<Object?> get props => [];
}

class AddPrToWishlist extends WishlistEvent {
  final Product products;

  const AddPrToWishlist(this.products);

  @override
  List<Object?> get props => [products];
}

class RemovePrFromWishlist extends WishlistEvent {
  final Product products;

  const RemovePrFromWishlist(this.products);
  @override
  List<Object?> get props => [products];
}