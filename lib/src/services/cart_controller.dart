import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:timbu/src/models/product.dart';
import 'package:timbu/src/services/wishlist_controller.dart';

class CartController extends Notifier<List<Product>> {
  @override
  List<Product> build() => [];

  bool inCart(Product product) => state.contains(product);

  void add(Product product) {
    if (inCart(product)) {
      increment(product);
      return;
    }
    state = [product, ...state];
  }

  void increment(Product product) {
    state = [
      for (final p in state)
        if (p.id == product.id) p.incrementQuantity() else p
    ];
  }

  void decrement(Product product, [bool canDelete = false]) {
    if (boundaryReached(product)) {
      remove(product.id);
      return;
    }
    state = [
      for (final p in state)
        if (p.id == product.id) p.decrementQuantity() else p
    ];
  }

  Product byId(String id) {
    return state.firstWhere((p) => p.id == id);
  }

  void moveToWishlist(Product product) {
    remove(product.id);
    ref.read(wishlistControllerProvider.notifier).addNoRemove(product);
  }

  bool boundaryReached(Product product) {
    return product.quantity == 1;
  }

  void remove(String productID) {
    state = state.where((e) => e.id != productID).toList();
  }

  void clear() => state = [];

  double get deliveryFee => 1500;
  String get deliveryFeeString => 'N 1500';

  double get discountAmount => 3500;
  String get discountAmountString => 'N 3500';

  double priceFromQuantity(Product product) {
    var price = 0.0;
    product.price.forEach((key, value) {
      price += (value as List).first as double;
    });

    return price * product.quantity;
  }

  double get _subtotalCost {
    try {
      return state.map(priceFromQuantity).reduce((prev, next) => prev + next);
    } catch (_) {
      return 0.0;
    }
  }

  String get subtotalCost {
    final str = NumberFormat('#,##0.00').format(_subtotalCost).toString();
    return 'N $str';
  }

  String get totalAmount {
    final cost = _subtotalCost + deliveryFee - discountAmount;
    final str = NumberFormat('#,##0.00').format(cost).toString();
    return 'N $str';
  }
}

final cartControllerProvider = NotifierProvider<CartController, List<Product>>(
  CartController.new,
);
