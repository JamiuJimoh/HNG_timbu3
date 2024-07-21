import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:timbu/src/services/orders_db.dart';

import '../models/order.dart';

class OrdersController extends AutoDisposeAsyncNotifier<List<Order>> {
  @override
  Future<List<Order>> build() async {
    final repo = await ref.watch(orderDBProvider.future);
    return repo.fetchOrders();
  }

  // void add(Order order) {
  //   state = [order, ...state];
  // }

  Future<void> add(Order order) async {
    final db = await ref.read(orderDBProvider.future);
    db.addOrder(order);
  }
}

final ordersControllerProvider =
    AutoDisposeAsyncNotifierProvider<OrdersController, List<Order>>(
        OrdersController.new);
