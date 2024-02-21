import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shpping_list/controller/list_controller.dart';

import '../data/dummy_items.dart';

class GroceryList extends StatelessWidget {
  const GroceryList({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ShoppingListController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Groceries'),
        actions: [
          IconButton(
              onPressed: () {
                controller.addNewItem(context);
              },
              icon: Icon(Icons.add_alarm_sharp))
        ],
      ),
      body: ListView.builder(
        itemCount: groceryItems.length,
        itemBuilder: (ctx, index) => ListTile(
          title: Text(groceryItems[index].name),
          leading: Container(
            width: 24,
            height: 24,
            color: groceryItems[index].category.color,
          ),
          trailing: Text(
            groceryItems[index].quantity.toString(),
          ),
        ),
      ),
    );
  }
}
