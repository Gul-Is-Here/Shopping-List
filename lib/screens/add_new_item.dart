import 'package:flutter/material.dart';
import 'package:shpping_list/data/categories.dart';
import 'package:shpping_list/model/category.dart';

class NewItem extends StatelessWidget {
  const NewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add a new item'),
      ),
      body: Form(
          child: Column(
        children: [
          TextFormField(
            maxLength: 50,
            decoration: const InputDecoration(label: Text('Name')),
          ),
          Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Expanded(
              child: TextFormField(
                initialValue: '1',
                decoration: const InputDecoration(
                  label: Text('Quantity'),
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: DropdownButtonFormField(items: [
                for (final category in categories.entries)
                  DropdownMenuItem(
                      value: category,
                      child: Row(
                        children: [
                          Container(
                            color: category.value.color,
                            width: 16,
                            height: 16,
                          ),
                          const SizedBox(width: 8),
                          Text(category.value.title)
                        ],
                      ))
              ], onChanged: (value) {}),
            )
          ])
        ],
      )),
    );
  }
}
