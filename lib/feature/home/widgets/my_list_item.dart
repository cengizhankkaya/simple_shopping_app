import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_shopping_app/feature/home/viewmodel/cart_model.dart';

class MyListItem extends StatelessWidget {
  final Item item;

  const MyListItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartModel>();
    final isInCart = cart.items.contains(item);

    return ListTile(
      title: Text(item.name),
      trailing: isInCart
          ? const Icon(Icons.check, color: Colors.green)
          : ElevatedButton(
              onPressed: () {
                cart.add(item);
              },
              child: const Text('Add'),
            ),
    );
  }
}
