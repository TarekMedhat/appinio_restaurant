import 'package:appinio_restaurant/common/constants/app_colors.dart';
import 'package:appinio_restaurant/common/widgets/app_loading_circle.dart';
import 'package:appinio_restaurant/features/cart/presentation/cubits/cart_cubit.dart';
import 'package:appinio_restaurant/features/cart/presentation/cubits/cart_state.dart';
import 'package:appinio_restaurant/features/food_menu/presentation/views/food_menu_screen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CartScreen extends StatefulWidget {
  static const path = '/cart';

  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  late final TextEditingController _textFieldController;

  @override
  void initState() {
    super.initState();
    _textFieldController = TextEditingController(
      text: context.read<CartCubit>().state.model.address,
    );
  }

  @override
  void dispose() {
    _textFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: context.canPop()
            ? CupertinoButton(
                padding: const EdgeInsets.only(bottom: 4),
                onPressed: () {
                  context.pop();
                },
                child: const Icon(
                  CupertinoIcons.back,
                ),
              )
            : null,
      ),
      child: SafeArea(
        child: BlocConsumer<CartCubit, CartState>(
          listenWhen: (oldState, newState) =>
              newState.runtimeType != oldState.runtimeType,
          listener: onStateChanged,
          builder: (context, state) {
            return state.maybeMap(
              loading: (_) => const AppLoadingCircle(),
              orElse: () => _buildScreenBody(stateModel: state.model),
            );
          },
        ),
      ),
    );
  }

  Widget _buildScreenBody({required CartStateModel stateModel}) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildTotalPriceText(stateModel: stateModel),
          const SizedBox(height: 16),
          _buildAddressFields(),
          const SizedBox(height: 16),
          _buildOrderButton(stateModel: stateModel),
          const SizedBox(height: 24),
          const Text("Order items"),
          const SizedBox(height: 16),
          _buildCartItems(stateModel: stateModel),
        ],
      ),
    );
  }

  Widget _buildTotalPriceText({required CartStateModel stateModel}) {
    return Row(
      children: [
        const Text(
          "Total Price: ",
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w500,
            color: AppColors.primaryColor,
          ),
        ),
        Text(
          '€${stateModel.totalPrice.toStringAsFixed(2)}',
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }

  Widget _buildAddressFields() {
    return CupertinoTextField(
      controller: _textFieldController,
      keyboardType: TextInputType.streetAddress,
      onChanged: (value) {
        final cubit = context.read<CartCubit>();
        cubit.onAddressChanged(address: value);
      },
      padding: const EdgeInsets.all(16),
      placeholder: 'Type your address',
      suffix: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(
          CupertinoIcons.location_solid,
          color: CupertinoColors.systemGrey4,
        ),
      ),
    );
  }

  Widget _buildOrderButton({required CartStateModel stateModel}) {
    return CupertinoButton(
      onPressed: stateModel.cartItems.isNotEmpty && stateModel.isValidAddress
          ? () => context.read<CartCubit>().makeOrder()
          : null,
      color: AppColors.primaryColor,
      child: const Text(
        'Order Now',
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget _buildCartItems({required CartStateModel stateModel}) {
    return Expanded(
      child: ListView.builder(
        itemCount: stateModel.cartItems.length,
        itemBuilder: (context, index) {
          final foodItem = stateModel.cartItems[index];
          return Container(
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
                    height: 100,
                    width: 100,
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
                SizedBox(
                  height: 34,
                  child: CupertinoButton(
                    onPressed: () {
                      context.read<CartCubit>().removeFromCart(item: foodItem);
                    },
                    color: AppColors.primaryColor.withOpacity(.2),
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: const Icon(
                      CupertinoIcons.cart_fill_badge_minus,
                      color: AppColors.primaryColor,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void onStateChanged(BuildContext context, CartState state) {
    state.whenOrNull(
      success: (_) {
        showCupertinoDialog(
          context: context,
          builder: (context) => CupertinoAlertDialog(
            title: const Text("Success"),
            content: const Text(
                "Your order was successfully made. Just rest while we prepare your perfect meal."),
            actions: [
              CupertinoDialogAction(
                onPressed: () {
                  context.read<CartCubit>().emptyCart();
                  context.go(FoodMenuScreen.path);
                },
                child: const Text("Ok"),
              ),
            ],
          ),
        );
      },
      failure: (error, model) {
        showCupertinoDialog(
          context: context,
          builder: (context) => CupertinoAlertDialog(
            title: const Text("Error"),
            content: Text(error),
            actions: [
              CupertinoDialogAction(
                onPressed: () {
                  context.read<CartCubit>().makeOrder();
                  Navigator.pop(context);
                },
                child: const Text("Retry"),
              ),
            ],
          ),
        );
      },
    );
  }
}
