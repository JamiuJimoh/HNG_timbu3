import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:timbu/src/services/cart_controller.dart';

import '../models/product.dart';

class WishlistController extends Notifier<List<Product>> {
  @override
  List<Product> build() => [];

  bool inWishlist(Product product) => state.contains(product);

  void add(Product product) {
    if (inWishlist(product)) {
      remove(product.id);
      return;
    }
    state = [product, ...state];
  }

  void addNoRemove(Product product) {
    if (inWishlist(product)) {
      state = [
        for (final p in state)
          if (p.id == product.id) product else p
      ];
      return;
    }
    state = [product, ...state];
  }

  void addToCart(Product product) {
    remove(product.id);
    ref.read(cartControllerProvider.notifier).add(product);
  }

  void remove(String productID) {
    state = state.where((e) => e.id != productID).toList();
  }
}

final wishlistControllerProvider =
    NotifierProvider<WishlistController, List<Product>>(
  WishlistController.new,
);
