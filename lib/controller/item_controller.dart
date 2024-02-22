import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shpping_list/screens/add_new_item.dart';

class ItemController extends GetxController {
  void addNewItem(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return const NewItem();
    }));
  }
}
