import 'dart:collection';

import 'package:flutter/material.dart';

class Item {
  final int id;
  final String name;
  Item(this.id, this.name);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Item &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name;

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}

class CartModel extends ChangeNotifier {
  /// Sepetin dahili, özel durumu (state).
  final List<Item> _items = [];

  /// Sepetteki ürünlerin değiştirilemez görünümü.
  UnmodifiableListView<Item> get items => UnmodifiableListView(_items);

  /// Tüm ürünlerin toplam mevcut fiyatı (her ürünün 42 dolar olduğu varsayılıyor).
  int get totalPrice => _items.length * 42;

  /// [item]'i sepete ekler. Bu ve [removeAll], dışarıdan sepeti değiştirebileceğiniz tek yollardır.

  void add(Item item) {
    _items.add(item);
    // Bu çağrı, bu modele dinleyen widget'lara yeniden çizilmeleri gerektiğini söyler.
    notifyListeners();
  }
}
