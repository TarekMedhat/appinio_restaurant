import 'package:appinio_restaurant/common/constants/app_colors.dart';
import 'package:appinio_restaurant/features/cart/presentation/cubits/cart_cubit.dart';
import 'package:appinio_restaurant/features/cart/presentation/views/cart_icon_button.dart';
import 'package:appinio_restaurant/features/food_menu/presentation/cubits/food_menu_cubit.dart';
import 'package:appinio_restaurant/features/food_menu/presentation/cubits/food_menu_state.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class DetailedFoodItemScreen extends StatelessWidget {
  static const path = "/menu/:id";
  final String foodItemId;
  const DetailedFoodItemScreen({Key? key, required this.foodItemId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FoodMenuCubit, FoodMenuState>(
      builder: (context, state) {
        return CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            leading: CupertinoButton(
              padding: const EdgeInsets.only(bottom: 4),
              onPressed: () {
                context.pop();
              },
              child: const Icon(
                CupertinoIcons.back,
              ),
            ),
            trailing: const CartIconButton(),
          ),
          child: SafeArea(
            child: _buildScreenBody(context: context, stateModel: state.model),
          ),
        );
      },
    );
  }

  Widget _buildScreenBody({
    required BuildContext context,
    required FoodMenuStateModel stateModel,
  }) {
    final foodItem =
        stateModel.menuItems.firstWhere((item) => item.id == foodItemId);
    final isFavorite = stateModel.favoriteFoodItems.contains(foodItem);
    return Container(
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(
        color: Color(0xffeeeeee),
      ))),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: CachedNetworkImage(
              imageUrl: foodItem.imageUrl,
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      foodItem.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 4,
                        bottom: 8,
                        top: 8,
                      ),
                      child: Text(
                        foodItem.description,
                        style: const TextStyle(fontSize: 12),
                      ),
                    ),
                    Text(
                      '€${foodItem.price}',
                      style: const TextStyle(
                        color: AppColors.primaryColor,
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'Some \n more \n details \n in \n here.....',
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
                                .removeFoodItemFromFavorite(foodItem: foodItem);
                          } else {
                            context
                                .read<FoodMenuCubit>()
                                .addFoodItemToFavorite(foodItem: foodItem);
                          }
                        }),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          CupertinoButton(
            onPressed: () {
              context.read<CartCubit>().addToCart(item: foodItem);
              context.pop();
            },
            padding: const EdgeInsets.all(12),
            color: AppColors.primaryColor.withOpacity(.2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Add To Cart",
                  style: TextStyle(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 8),
                Icon(
                  CupertinoIcons.cart_fill_badge_plus,
                  color: AppColors.primaryColor,
                  size: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
