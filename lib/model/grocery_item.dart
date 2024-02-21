import 'package:shpping_list/model/category.dart';

class GroceryItem {
  final String id;
  final String name;
  final double quantity;
  final Category category;
  GroceryItem(
      {required this.id,
      required this.name,
      required this.quantity,
      required this.category});
}
