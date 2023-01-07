import 'package:appinio_restaurant/common/constants/app_colors.dart';
import 'package:appinio_restaurant/features/cart/presentation/cubits/cart_cubit.dart';
import 'package:appinio_restaurant/features/cart/presentation/cubits/cart_state.dart';
import 'package:appinio_restaurant/features/cart/presentation/views/cart_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CartIconButton extends StatelessWidget {
  const CartIconButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        final isCartFilled = state.model.cartItems.isNotEmpty;
        return Stack(
          children: [
            CupertinoButton(
              padding: const EdgeInsets.all(4),
              onPressed:
                  isCartFilled ? () => context.push(CartScreen.path) : null,
              child: const Icon(
                CupertinoIcons.cart,
                size: 28,
              ),
            ),
            if (isCartFilled)
              Positioned(
                top: 5,
                right: 2,
                child: Container(
                  width: 15,
                  height: 15,
                  padding: const EdgeInsets.only(left: 1, bottom: 1),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primaryColor,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    state.model.cartItems.length.toString(),
                    style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: CupertinoColors.white),
                  ),
                ),
              )
          ],
        );
      },
    );
  }
}
