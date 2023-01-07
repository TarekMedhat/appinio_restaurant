import 'package:appinio_restaurant/common/constants/app_colors.dart';
import 'package:appinio_restaurant/common/navigation/app_router.dart';
import 'package:appinio_restaurant/common/utils/cubit_observer.dart';
import 'package:appinio_restaurant/features/cart/presentation/cubits/cart_cubit.dart';
import 'package:appinio_restaurant/features/food_menu/data/food_menu_service.dart';
import 'package:appinio_restaurant/features/food_menu/presentation/cubits/food_menu_cubit.dart';
import 'package:appinio_restaurant/features/orders/data/order_service.dart';
import 'package:appinio_restaurant/firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_strategy/url_strategy.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy(); // Removes the leading hash (#) from the URL of your Flutter web app
  Bloc.observer = CubitObserver();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _firestore = FirebaseFirestore.instance;

  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => FoodMenuService(firestore: _firestore),
        ),
        RepositoryProvider(
          create: (context) => OrderService(firestore: _firestore),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                FoodMenuCubit(foodMenuService: context.read<FoodMenuService>())
                  ..fetchMenuItems(),
          ),
          BlocProvider(
            create: (context) =>
                CartCubit(orderService: context.read<OrderService>()),
          ),
        ],
        child: GestureDetector(
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: CupertinoApp.router(
              theme: const CupertinoThemeData(
                primaryColor: AppColors.primaryColor,
              ),
              routerConfig: getAppRouter(),
              debugShowCheckedModeBanner: false,
            )),
      ),
    );
  }
}
