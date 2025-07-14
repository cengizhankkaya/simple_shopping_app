import 'package:flutter/material.dart';
import 'package:simple_shopping_app/feature/home/view/catalog_screen.dart';
import 'package:provider/provider.dart';
import 'package:simple_shopping_app/feature/home/viewmodel/cart_model.dart';
import 'package:simple_shopping_app/feature/login/view/login_view.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const LoginScreen(),
    );
  }
}
