import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/order.dart';
import '../models/product.dart';
import '../utils/constants.dart';

class OrderController extends Notifier<Order?> {
  @override
  Order? build() => null;

  void copyWith(Order? Function(Order?) cb) {
    state = cb(state);
  }

  void newWithProducts(List<Product> products, String subtotal) {
    final order = Order(
      id: _generateOrderNumber(),
      createdAt: DateTime.now(),
      status: _generateStatus(),
      pickup: address1,
      cardEndingIn: '',
      phone1: '',
      phone2: '',
      delivery: '',
      subTotal: subtotal,
      products: products,
    );
    state = order;
  }

  void copyWithCardNumber(String cardNumber) {
    final number = cardNumber.split(' ').last;
    copyWith((order) => order?.copyWith(cardEndingIn: number));
  }

  String _generateOrderNumber() {
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    return '#$timestamp';
  }

  String _generateStatus() {
    final delivered = Random().nextBool();
    if (delivered) {
      return OrderStatus.delivered.text;
    }
    return OrderStatus.processing.text;
  }
}

final orderControllerProvider =
    NotifierProvider<OrderController, Order?>(OrderController.new);
