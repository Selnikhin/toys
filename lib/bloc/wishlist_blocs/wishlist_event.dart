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
  final Products products_all;

  const AddPrToWishlist(this.products_all);

  @override
  List<Object?> get props => [products_all];
}

class RemovePrFromWishlist extends WishlistEvent {
  final Products products_all;

  const RemovePrFromWishlist(this.products_all);
  @override
  List<Object?> get props => [products_all];
}