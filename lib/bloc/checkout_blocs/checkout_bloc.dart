import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../cart_blocs/cart_bloc.dart';

part 'checkout_event.dart';

part 'checkout_state.dart';

// class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
//   final CartBloc _catrBloc;
//   final CheckoutRepo _checkoutRepo;
//   StreamSubscription? _cartSubscription;
//   StreamSubscription? _checkSubscription;
//
//   CheckoutBloc({
//     required CartBloc cartBloc,
//     required CheckoutRepo checkoutRepo,
//   })  : _catrBloc = catrBloc,
//         _checkoutRepo = checkoutRepo,
//         super(
//           cartBloc.state is CartLoaded
//               ? CheckoutLoaded(
//                   products: (cartBloc.state as CartLoaded).cart.products,
//                   deliveryFree:
//                       (cartBloc.state as CartLoaded).cart.deliveryFreeString,
//                   subtotal: (cartBloc.state as CartLoaded).cart.subtotalString,
//                   total: (cartBloc.state as CartLoaded).cart.totalString,
//                 )
//               : CheckoutLoading(),
//         ) {
//     on<UpdateCheckout>(_onUpdateCheckout); // для проверки обновления
//     on<ConfirmCheckout>(_onConfirmCheckout); // для подтвержденеия проверки
//
//     _cartSubscription = cartBloc.stream.listen((state) {
//       if (state is CartLoaded)
//         add(
//           UpdateCheckout(cart: state.cart),
//         );
//     });
//   }
//
//   void _onUpdateCheckout(
//     UpdateCheckout event,
//     Emitter<CheckoutState> emit,
//   ) {
//     final state = this.state;
//     if (state is CheckoutLoaded) {
//       emit(
//         CheckoutLoaded(
//             email: event.email ?? state.email,
//             fullName: event.fullName ?? state.fullName,
//             products: event.cart?.products ?? state.products,
//             deliveryFree: event.cart?.deliveryFreeString ?? state.subtotal,
//             Total: event.cart?.totalString ?? state.total,
//             adress: event.adress ?? state.adress,
//             city: event.city ?? state.city,
//             country: event.country ?? state.country),
//       );
//     }
//   }
//
//   void _onConfirmCheckout(
//     ConfirmCheckout event,
//     Emitter<CheckoutState> emit,
//   ) async {
//     _checkoutSubscrition?.cancel();
//     if (state as CheckoutLoaded) {
//       try {
//         await _checkoutRepo.addCheckout(event.checkout);
//         print('Done');
//         emit(CheckoutLoading());
//       } catch (_) {}
//     }
//   }
// }
