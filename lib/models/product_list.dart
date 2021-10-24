import 'package:flutter/cupertino.dart';
import 'package:shop/data/dummy_data.dart';
import 'package:shop/models/product_model.dart';

class ProductList with ChangeNotifier {
  List<Product> _items = dummyProducts;

  List<Product> get items => [..._items];
  List<Product> get favoriteItems =>
      _items.where((prod) => prod.isFavorite).toList();

  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }
}

// bool _showFavorityOnly = false;

//   List<Product> get items {
//     if (_showFavorityOnly) {
//       return _items.where((prod) => prod.isFavorite).toList();
//     }
//     return [..._items];
//   }

//   void showFavoriteOnly() {
//     _showFavorityOnly = true;
//     notifyListeners();
//   }

//   void showAll() {
//     _showFavorityOnly = false;
//     notifyListeners();
//   }

//   void addProduct(Product product) {
//     _items.add(product);
//     notifyListeners();
//   }
// }