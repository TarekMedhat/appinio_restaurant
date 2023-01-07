import 'package:appinio_restaurant/features/food_menu/models/food_item.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FoodMenuService {
  final FirebaseFirestore _firestore;

  const FoodMenuService({
    required FirebaseFirestore firestore,
  }) : _firestore = firestore;

  Future<List<FoodItem>> getMenuItems() async {
    final results = await _firestore.collection("menuItems").get();
    return results.docs.map((doc) => FoodItem.fromJson(doc.data())).toList();
  }
}
