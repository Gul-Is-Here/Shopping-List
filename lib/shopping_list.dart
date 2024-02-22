import 'package:flutter/material.dart';
import 'package:shpping_list/data/categories.dart';
import 'package:shpping_list/data/dummy_items.dart';
import 'package:shpping_list/model/category.dart';

class ShoppingListScreen extends StatelessWidget {
  const ShoppingListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Shopping List'),
        ),
        body: ListView(children: [
          for (final items in groceryItems)
            ListTile(
              leading: Container(
                color: Colors.white,
                height: 10,
                width: 10,
              ),
              title: Text(''),
            )
        ]));
  }
}
