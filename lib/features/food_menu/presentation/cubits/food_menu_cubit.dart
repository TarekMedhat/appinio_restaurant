import 'package:appinio_restaurant/features/food_menu/data/food_menu_service.dart';
import 'package:appinio_restaurant/features/food_menu/models/food_item.dart';
import 'package:appinio_restaurant/features/food_menu/presentation/cubits/food_menu_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FoodMenuCubit extends Cubit<FoodMenuState> {
  final FoodMenuService _foodMenuService;

  FoodMenuCubit({
    required FoodMenuService foodMenuService,
  })  : _foodMenuService = foodMenuService,
        super(const FoodMenuState.initial(model: FoodMenuStateModel()));

  Future<void> fetchMenuItems() async {
    try {
      emit(FoodMenuState.loading(model: state.model));
      final menuItems = await _foodMenuService.getMenuItems();
      emit(FoodMenuState.success(
        model: state.model.copyWith(
          menuItems: menuItems,
          filteredMenuItems: menuItems,
        ),
      ));
    } catch (e) {
      emit(FoodMenuState.failure(
        error: "Something went wrong!",
        model: state.model,
      ));
    }
  }

  Future<void> addFoodItemToFavorite({required FoodItem foodItem}) async {
    final favoriteItems = [foodItem, ...state.model.favoriteFoodItems];
    final filteredFavoriteItems =
        List.of(state.model.filteredFavoriteFoodItems);
    final favoriteItemsSearchQuery = state.model.favoriteItemsSearchQuery;
    if (favoriteItemsSearchQuery.isEmpty ||
        foodItem.name.contains(favoriteItemsSearchQuery)) {
      filteredFavoriteItems.add(foodItem);
    }
    emit(state.copyWith(
      model: state.model.copyWith(
        favoriteFoodItems: favoriteItems,
        filteredFavoriteFoodItems: filteredFavoriteItems,
      ),
    ));
  }

  Future<void> removeFoodItemFromFavorite({required FoodItem foodItem}) async {
    final favoriteItems = List.of(state.model.favoriteFoodItems);
    final filteredFavoriteItems =
        List.of(state.model.filteredFavoriteFoodItems);
    favoriteItems.remove(foodItem);
    filteredFavoriteItems.remove(foodItem);
    emit(state.copyWith(
      model: state.model.copyWith(
        favoriteFoodItems: favoriteItems,
        filteredFavoriteFoodItems: filteredFavoriteItems,
      ),
    ));
  }

  Future<void> filterMenuItems({required String query}) async {
    final filteredFoodItems = query.isEmpty
        ? state.model.menuItems
        : state.model.menuItems
            .where(
                (item) => item.name.toLowerCase().contains(query.toLowerCase()))
            .toList();
    emit(state.copyWith(
      model: state.model.copyWith(filteredMenuItems: filteredFoodItems),
    ));
  }

  Future<void> filterFavoriteFoodItems({required String query}) async {
    final filteredFoodItems = query.isEmpty
        ? state.model.favoriteFoodItems
        : state.model.favoriteFoodItems
            .where(
                (item) => item.name.toLowerCase().contains(query.toLowerCase()))
            .toList();
    emit(state.copyWith(
      model: state.model.copyWith(
        filteredFavoriteFoodItems: filteredFoodItems,
        favoriteItemsSearchQuery: query,
      ),
    ));
  }
}
