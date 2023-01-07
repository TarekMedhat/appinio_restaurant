import 'package:appinio_restaurant/features/food_menu/models/food_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_menu_state.freezed.dart';

@freezed
class FoodMenuState with _$FoodMenuState {
  const factory FoodMenuState.initial({
    required FoodMenuStateModel model,
  }) = _Initial;

  const factory FoodMenuState.loading({
    required FoodMenuStateModel model,
  }) = _Loading;

  const factory FoodMenuState.success({
    required FoodMenuStateModel model,
  }) = _Success;

  const factory FoodMenuState.failure({
    required String error,
    required FoodMenuStateModel model,
  }) = _Failure;
}

@freezed
class FoodMenuStateModel with _$FoodMenuStateModel {
  const factory FoodMenuStateModel({
    @Default([]) List<FoodItem> menuItems,
    @Default([]) List<FoodItem> filteredMenuItems,
    @Default([]) List<FoodItem> favoriteFoodItems,
    @Default([]) List<FoodItem> filteredFavoriteFoodItems,
    @Default('') String favoriteItemsSearchQuery,
  }) = _FoodMenuStateModel;
}
