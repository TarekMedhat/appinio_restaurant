import 'package:appinio_restaurant/features/cart/presentation/views/cart_screen.dart';
import 'package:appinio_restaurant/features/food_menu/presentation/cubits/food_menu_cubit.dart';
import 'package:appinio_restaurant/features/food_menu/presentation/views/detailed_food_item_screen.dart';
import 'package:appinio_restaurant/features/food_menu/presentation/views/food_menu_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

GoRouter getAppRouter() {
  return GoRouter(
    initialLocation: FoodMenuScreen.path,
    redirect: (context, state) {
      if (context.read<FoodMenuCubit>().state.model.menuItems.isEmpty) {
        return FoodMenuScreen.path;
      }
      return null;
    },
    routes: [
      GoRoute(
        path: FoodMenuScreen.path,
        builder: (context, state) => const FoodMenuScreen(),
      ),
      GoRoute(
        path: DetailedFoodItemScreen.path,
        builder: (context, state) => DetailedFoodItemScreen(
          foodItemId: state.params['id'] as String,
        ),
      ),
      GoRoute(
        path: CartScreen.path,
        builder: (context, state) => const CartScreen(),
      ),
    ],
  );
}
