import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_shopping_app/feature/home/viewmodel/cart_model.dart';
import 'cart_screen.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  static const List<String> productNames = [
    'Recursion',
    'Sprint',
    'Heisenbug',
    'Spaghetti',
    'Hydra Code',
    'Off-By-One',
    'Scope',
    'Callback',
    'Closure',
    'Automata',
    'Bit Shift',
  ];

  static const List<Color> productColors = [
    Color(0xFF6F35FC),
    Color(0xFF4285F4),
    Color(0xFF00B4D8),
    Color(0xFF48CAE4),
    Color(0xFF00B894),
    Color(0xFF00C853),
    Color(0xFFB2FF59),
    Color(0xFFFFEB3B),
    Color(0xFFFFC107),
    Color(0xFFFFA000),
    Color(0xFFFFD600),
  ];

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartModel>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Catalog',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.black),
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (_) => const CartScreen()));
            },
          ),
        ],
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: ListView.builder(
        itemCount: productNames.length,
        itemBuilder: (context, index) {
          final name = productNames[index];
          final color = productColors[index % productColors.length];
          final item = Item(index, name);
          final isInCart = cart.items.contains(item);
          return ListTile(
            leading: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            title: Text(name),
            trailing: isInCart
                ? const Icon(Icons.check, color: Colors.green)
                : TextButton(
                    onPressed: () {
                      cart.add(item);
                    },
                    child: const Text('ADD'),
                  ),
          );
        },
      ),
    );
  }
}
