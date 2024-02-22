import 'package:shpping_list/data/categories.dart';
import 'package:shpping_list/model/category.dart';
import 'package:shpping_list/model/grocery_item.dart';

final groceryItems = [
  GroceryItem(
      id: 'a',
      name: 'Milk',
      quantity: 1,
      category: categories[Categories.dairy] as Category),
  GroceryItem(
      id: 'b',
      name: 'Bananas',
      quantity: 5,
      category: categories[Categories.fruit] as Category),
  GroceryItem(
      id: 'c',
      name: 'Beef Steak',
      quantity: 1,
      category: categories[Categories.meat] as Category),
];
