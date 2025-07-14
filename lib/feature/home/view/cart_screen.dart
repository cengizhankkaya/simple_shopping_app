import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_shopping_app/feature/home/viewmodel/cart_model.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartModel>();

    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Cart',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cart.items.length,
              itemBuilder: (context, index) {
                final item = cart.items[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 16,
                  ),
                  child: Text(
                    '• ${item.name}',
                    style: const TextStyle(color: Colors.black, fontSize: 20),
                  ),
                );
              },
            ),
          ),
          const Divider(color: Colors.black, thickness: 2, height: 0),
          Container(
            color: Colors.yellow,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  ' 24${cart.totalPrice}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    color: Colors.black,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                    textStyle: const TextStyle(fontWeight: FontWeight.bold),
                    elevation: 0,
                  ),
                  onPressed: () {
                    // Satın alma işlemi burada yapılabilir
                  },
                  child: const Text('BUY'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
