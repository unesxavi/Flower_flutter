import 'dart:math';

import 'package:flutter/material.dart';
import '../model/item.dart';

class Cart with ChangeNotifier {
  List selectedProducts = [];
  double price = 0;

  add(Item product) {
    selectedProducts.add(product);
    // price += product.price.round();
    price += product.price;
    price = roundDouble(price, 2);

    notifyListeners();
  }

  delete(Item product) {
    selectedProducts.remove(product);
    price -= product.price.round();
    price = roundDouble(price, 2);

    notifyListeners();
  }

  get itemCount {
    return selectedProducts.length;
  }

  double roundDouble(double value, int places) {
    num mod = pow(10.0, places);
    return ((value * mod).round().toDouble() / mod);
  }
}
