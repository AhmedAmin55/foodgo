import 'package:flutter/material.dart';

import 'item.dart';

class AllItemsBuilder extends StatelessWidget {
  const AllItemsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 2.5 / 3,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Item(index: index);
      },
    );
  }
}
