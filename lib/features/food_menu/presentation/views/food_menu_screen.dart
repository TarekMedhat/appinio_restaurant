import 'package:appinio_restaurant/common/constants/app_colors.dart';
import 'package:appinio_restaurant/common/widgets/app_loading_circle.dart';
import 'package:appinio_restaurant/features/cart/presentation/cubits/cart_cubit.dart';
import 'package:appinio_restaurant/features/cart/presentation/views/cart_icon_button.dart';
import 'package:appinio_restaurant/features/food_menu/presentation/cubits/food_menu_cubit.dart';
import 'package:appinio_restaurant/features/food_menu/presentation/cubits/food_menu_state.dart';
import 'package:appinio_restaurant/features/food_menu/presentation/views/detailed_food_item_screen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FoodMenuScreen extends StatelessWidget {
  static const path = '/';
  static const _pages = ['Menu', 'Favorites'];

  const FoodMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: [
        BottomNavigationBarItem(
          icon: const Icon(CupertinoIcons.book),
          label: FoodMenuScreen._pages[0],
        ),
        BottomNavigationBarItem(
          icon: const Icon(CupertinoIcons.heart),
          label: FoodMenuScreen._pages[1],
        ),
      ]),
      tabBuilder: (BuildContext context, int pageIndex) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return CupertinoPageScaffold(
              navigationBar: _buildNavigationBar(
                  context, FoodMenuScreen._pages[pageIndex]),
              child: SafeArea(
                child: BlocConsumer<FoodMenuCubit, FoodMenuState>(
                  listenWhen: (oldState, newState) =>
                      newState.runtimeType != oldState.runtimeType,
                  listener: onStateChanged,
                  builder: (context, state) {
                    return state.maybeMap(
                      loading: (_) => const AppLoadingCircle(),
                      orElse: () => _buildScreenBody(
                        context: context,
                        stateModel: state.model,
                        isFavoritePage: pageIndex == 1,
                      ),
                    );
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildScreenBody({
    required BuildContext context,
    required FoodMenuStateModel stateModel,
    required bool isFavoritePage,
  }) {
    return Column(
      children: [
        _buildSearchField(context: context, isFavoritePage: isFavoritePage),
        _buildFoodItems(
          context: context,
          isFavoritePage: isFavoritePage,
          stateModel: stateModel,
        ),
      ],
    );
  }

  ObstructingPreferredSizeWidget _buildNavigationBar(
    BuildContext context,
    String pageName,
  ) {
    return CupertinoNavigationBar(
      middle: Text(pageName),
      trailing: const CartIconButton(),
    );
  }

  Widget _buildSearchField({
    required BuildContext context,
    required bool isFavoritePage,
  }) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      child: CupertinoTextField(
        onChanged: (value) {
          final cubit = context.read<FoodMenuCubit>();
          if (isFavoritePage) {
            cubit.filterFavoriteFoodItems(query: value);
          } else {
            cubit.filterMenuItems(query: value);
          }
        },
        placeholder: 'Search...',
        suffix: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            CupertinoIcons.search,
            color: CupertinoColors.systemGrey4,
          ),
        ),
      ),
    );
  }

  Widget _buildFoodItems({
    required BuildContext context,
    required bool isFavoritePage,
    required FoodMenuStateModel stateModel,
  }) {
    final items = isFavoritePage
        ? stateModel.filteredFavoriteFoodItems
        : stateModel.filteredMenuItems;
    return Expanded(
      child: ListView.builder(
        primary: false,
        padding: const EdgeInsets.all(12),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final foodItem = items[index];
          final isFavorite =
              isFavoritePage || stateModel.favoriteFoodItems.contains(foodItem);
          return GestureDetector(
            onTap: () {
              context.push(
                  DetailedFoodItemScreen.path.replaceAll(":id", foodItem.id));
            },
            child: Container(
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                color: Color(0xffeeeeee),
              ))),
              padding: const EdgeInsets.only(top: 12.0, bottom: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: CachedNetworkImage(
                      imageUrl: foodItem.imageUrl,
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Text(foodItem.name),
                        ),
                        Text(
                          foodItem.description,
                          style: const TextStyle(fontSize: 12),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '€${foodItem.price}',
                          style: const TextStyle(
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    children: [
                      SizedBox(
                        height: 34,
                        child: CupertinoButton(
                            padding: EdgeInsets.zero,
                            child: Icon(
                              isFavorite
                                  ? CupertinoIcons.heart_fill
                                  : CupertinoIcons.heart,
                              size: 30,
                            ),
                            onPressed: () {
                              if (isFavorite) {
                                context
                                    .read<FoodMenuCubit>()
                                    .removeFoodItemFromFavorite(
                                        foodItem: foodItem);
                              } else {
                                context
                                    .read<FoodMenuCubit>()
                                    .addFoodItemToFavorite(foodItem: foodItem);
                              }
                            }),
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        height: 34,
                        child: CupertinoButton(
                          onPressed: () {
                            context.read<CartCubit>().addToCart(item: foodItem);
                          },
                          color: AppColors.primaryColor.withOpacity(.2),
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: const Icon(
                            CupertinoIcons.cart_fill_badge_plus,
                            color: AppColors.primaryColor,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void onStateChanged(BuildContext context, FoodMenuState state) {
    state.whenOrNull(failure: (error, model) {
      showCupertinoDialog(
        context: context,
        builder: (context) => CupertinoAlertDialog(
          title: const Text("Error"),
          content: Text(error),
          actions: [
            CupertinoDialogAction(
              onPressed: () {
                context.read<FoodMenuCubit>().fetchMenuItems();
                Navigator.pop(context);
              },
              child: const Text("Retry"),
            ),
          ],
        ),
      );
    });
  }
}
