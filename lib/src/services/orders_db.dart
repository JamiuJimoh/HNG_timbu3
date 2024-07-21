import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:timbu/src/models/order.dart';
import 'package:timbu/src/models/order_cache_model.dart';
import 'package:path_provider/path_provider.dart';

class OrderDB {
  final Isar isar;

  OrderDB({required this.isar});

  Future<void> addOrder(Order order) async {
    await isar.writeTxn(() async {
      await isar.orderCacheModels.put(OrderCacheModel.fromOrder(order));
    });
  }

  Future<List<Order>> fetchOrders() async {
    final cached = await isar.orderCacheModels.where().sortByCreatedAt().findAll();
    return List.generate(cached.length, (i) {
      return Order.fromCache(cached[i]);
    });
  }
}

final orderDBProvider = FutureProvider((ref) async {
  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open(
    [OrderCacheModelSchema],
    directory: dir.path,
  );
  return OrderDB(isar: isar);
});
