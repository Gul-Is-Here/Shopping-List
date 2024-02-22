import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shpping_list/data/categories.dart';

import '../model/category.dart';
import '../model/grocery_item.dart';
import '../screens/add_new_item.dart';

class ItemController extends GetxController {
  final List<GroceryItem> groceryList = <GroceryItem>[].obs;
  final formKey = GlobalKey<FormState>();
  var enteredName = '';
  var enteredQuantity = '';
  Category selectedCategory = categories[Categories.vegetables] as Category;

  void saveForm(BuildContext context) {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      groceryList.add(GroceryItem(
          id: DateTime.now().toString(),
          name: enteredName,
          quantity: double.parse(enteredQuantity),
          category: selectedCategory));
      Get.back(); // Close the dialog after adding the item
    }
  }

  void addNewItem(BuildContext context) async {
    await Get.to(() => const NewItem());
  }
}
