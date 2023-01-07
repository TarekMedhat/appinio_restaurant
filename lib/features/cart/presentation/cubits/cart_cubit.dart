import 'package:appinio_restaurant/features/cart/presentation/cubits/cart_state.dart';
import 'package:appinio_restaurant/features/food_menu/models/food_item.dart';
import 'package:appinio_restaurant/features/orders/data/order_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartCubit extends Cubit<CartState> {
  final OrderService _orderService;

  CartCubit({
    required OrderService orderService,
  })  : _orderService = orderService,
        super(const CartState.initial(model: CartStateModel()));

  void onAddressChanged({required String address}) {
    emit(
      state.copyWith(
        model: state.model.copyWith(address: address),
      ),
    );
  }

  void addToCart({required FoodItem item}) {
    final cartItems = [item, ...state.model.cartItems];
    emit(
      state.copyWith(
        model: state.model.copyWith(cartItems: cartItems),
      ),
    );
  }

  void removeFromCart({required FoodItem item}) {
    final cartItems = List.of(state.model.cartItems);
    cartItems.remove(item);
    emit(
      state.copyWith(
        model: state.model.copyWith(cartItems: cartItems),
      ),
    );
  }

  void emptyCart() {
    emit(
      state.copyWith(
        model: state.model.copyWith(cartItems: []),
      ),
    );
  }

  Future<void> makeOrder() async {
    emit(CartState.loading(model: state.model));
    try {
      await _orderService.makeOrder(
        items: state.model.cartItems,
        address: state.model.address,
      );
      emit(CartState.success(model: state.model));
    } catch (e) {
      emit(
        CartState.failure(
          error: "Something went wrong!",
          model: state.model,
        ),
      );
    }
  }
}
