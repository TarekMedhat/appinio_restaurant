import 'package:appinio_restaurant/features/food_menu/models/food_item.dart';
import 'package:appinio_restaurant/features/orders/models/order.dart';
import 'package:cloud_firestore/cloud_firestore.dart' as fs;

class OrderService {
  final fs.FirebaseFirestore _firestore;

  const OrderService({
    required fs.FirebaseFirestore firestore,
  }) : _firestore = firestore;

  Future<void> makeOrder({
    required List<FoodItem> items,
    required String address,
  }) async {
    final order = Order(items: items, address: address);
    await _firestore.collection("orders").add(order.toJson());
  }
}
