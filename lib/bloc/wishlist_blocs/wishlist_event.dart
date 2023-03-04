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
  final Product product;

  const AddPrToWishlist(this.product);

  @override
  List<Object?> get props => [product];
}

class RemovePrFromWishlist extends WishlistEvent {
  final Product product;

  const RemovePrFromWishlist(this.product);
  @override
  List<Object?> get props => [product];
}