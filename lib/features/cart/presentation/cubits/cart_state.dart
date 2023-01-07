import 'package:appinio_restaurant/features/food_menu/models/food_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_state.freezed.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial({
    required CartStateModel model,
  }) = _Initial;

  const factory CartState.loading({
    required CartStateModel model,
  }) = _Loading;

  const factory CartState.success({
    required CartStateModel model,
  }) = _Success;

  const factory CartState.failure({
    required String error,
    required CartStateModel model,
  }) = _Failure;
}

@freezed
class CartStateModel with _$CartStateModel {
  const CartStateModel._();

  const factory CartStateModel({
    @Default([]) List<FoodItem> cartItems,
    @Default('') String address,
  }) = _CartStateModel;

  double get totalPrice => cartItems.isEmpty
      ? 0
      : cartItems
          .map((item) => item.price)
          .reduce((value, price) => value + price);

  bool get isValidAddress => address.length > 10;
}
