import 'package:isar/isar.dart';
import 'package:timbu/src/models/product_cache_model.dart';

import 'order.dart';

part 'order_cache_model.g.dart';

@collection
class OrderCacheModel {
  OrderCacheModel({
    required this.orderID,
    required this.createdAt,
    required this.status,
    required this.cardEndingIn,
    required this.pickup,
    required this.phone1,
    required this.phone2,
    required this.delivery,
    required this.subTotal,
    required this.products,
  }) : id = Isar.autoIncrement;

  late Id id;

  late String orderID;

  @Index(unique: true, replace: true)
  late DateTime createdAt;

  late String status;

  late String cardEndingIn;

  late String pickup;

  late String phone1;

  late String? phone2;

  late String? delivery;

  late String subTotal;

  late List<ProductCacheModel> products;

  factory OrderCacheModel.fromOrder(Order order) => OrderCacheModel(
        orderID: order.id,
        createdAt: order.createdAt,
        status: order.status,
        cardEndingIn: order.cardEndingIn,
        pickup: order.pickup,
        phone1: order.phone1,
        phone2: order.phone2,
        delivery: order.delivery,
        subTotal: order.subTotal,
        products: List.generate(order.products.length, (i) {
          return ProductCacheModel.fromProduct(order.products[i]);
        }),
      );
}
