import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shpping_list/controller/item_controller.dart';

class GroceryList extends StatelessWidget {
  final ItemController controller = Get.put(ItemController());

  GroceryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Groceries'),
        actions: [
          IconButton(
            onPressed: () {
              controller.addNewItem(context);
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Obx(
        () => controller.groceryList.isEmpty
            ? const Center(child: Text('No grocery items available'))
            : ListView.builder(
                itemCount: controller.groceryList.length,
                itemBuilder: (ctx, index) {
                  // final groceryItem = controller.groceryList[index];
                  return ListTile(
                    title: Text(controller.groceryList[index].name),
                    leading: Container(
                      width: 24,
                      height: 24,
                      color: controller.groceryList[index].category.color,
                    ),
                    trailing: Text(
                      controller.groceryList[index].quantity.toString(),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
