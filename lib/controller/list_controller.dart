import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shpping_list/add_new_item.dart';

class ShoppingListController extends GetxController {
  void addNewItem(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return NewItemScreen();
    }));
  }
}
