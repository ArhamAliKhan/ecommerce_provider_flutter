import 'package:flutter/material.dart';
import '../Model/product_model.dart';

class FavoriteProvider with ChangeNotifier {
  List<Product> _favorites = [];

  List<Product> get favorites => _favorites;

  void toggleFavorite(Product product) {
    if (_favorites.contains(product)) {
      _favorites.remove(product);
    } else {
      _favorites.add(product);
    }
    notifyListeners(); // Notify listeners for state changes
  }

  bool isFavorite(Product product) {
    return _favorites.contains(product);
  }
}
