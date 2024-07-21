import 'dart:convert';

import 'package:intl/intl.dart';
import 'package:timbu/src/models/order_cache_model.dart';

import 'product.dart';

class Order {
  final String id;
  final DateTime createdAt;
  final String status;
  final String cardEndingIn;
  final String pickup;
  final String phone1;
  final String? phone2;
  final String? delivery;
  final String subTotal;
  final List<Product> products;

  const Order({
    required this.id,
    required this.createdAt,
    required this.status,
    required this.cardEndingIn,
    required this.pickup,
    required this.phone1,
    this.phone2,
    this.delivery,
    required this.subTotal,
    required this.products,
  });

  Order copyWith({
    String? id,
    DateTime? createdAt,
    String? status,
    String? cardEndingIn,
    String? pickup,
    String? phone1,
    String? phone2,
    String? delivery,
    String? subTotal,
    List<Product>? products,
  }) {
    return Order(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      status: status ?? this.status,
      cardEndingIn: cardEndingIn ?? this.cardEndingIn,
      pickup: pickup ?? this.pickup,
      phone1: phone1 ?? this.phone1,
      phone2: phone2 ?? this.phone2,
      delivery: delivery ?? this.delivery,
      subTotal: subTotal ?? this.subTotal,
      products: products ?? this.products,
    );
  }

  String get formattedDate {
    return DateFormat('MMMM dd, yyyy').format(createdAt).toString();
  }

  int get itemCount {
    var count = 0;
    for (final product in products) {
      count += product.quantity;
    }
    return count;
  }

  factory Order.fromCache(OrderCacheModel cache) => Order(
        id: cache.orderID,
        createdAt:cache. createdAt,
        status: cache.status,
        cardEndingIn:cache. cardEndingIn,
        pickup: cache.pickup,
        phone1: cache.phone1,
        phone2: cache.phone2,
        subTotal: cache.subTotal,
        delivery: cache.delivery,
        products: List.generate(cache.products.length, (i) {
          return Product.fromCache(cache.products[i]);
        }),
      );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'createdAt': createdAt.toIso8601String(),
      'status': status,
      'cardEndingIn': cardEndingIn,
      'pickup': pickup,
      'phone1': phone1,
      'phone2': phone2,
      'delivery': delivery,
      'subTotal': subTotal,
      'products': products.map((x) => x.toMap()).toList(),
    };
  }

  factory Order.fromMap(Map<String, dynamic> map) {
    return Order(
      id: map['id'] as String,
      createdAt: DateTime.parse(map['createdAt'] as String),
      status: map['status'] as String,
      cardEndingIn: map['cardEndingIn'] as String,
      pickup: map['pickup'] as String,
      phone1: map['phone1'] as String,
      phone2: map['phone2'] != null ? map['phone2'] as String : null,
      delivery: map['delivery'] != null ? map['delivery'] as String : null,
      subTotal: map['subTotal'] as String,
      products: List<Product>.from(
        (map['products'] as List<int>).map<Product>(
          (x) => Product.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Order.fromJson(String source) =>
      Order.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Order(id: $id, createdAt: $createdAt, status: $status, cardEndingIn: $cardEndingIn, pickup: $pickup, phone1: $phone1, phone2: $phone2, delivery: $delivery, subTotal: $subTotal, products: $products)';
  }

  @override
  bool operator ==(covariant Order other) {
    if (identical(this, other)) return true;

    return other.id == id;
  }

  @override
  int get hashCode {
    return id.hashCode;
  }
}

enum OrderStatus {
  processing('processing'),
  delivered('delivered');

  const OrderStatus(this.text);
  final String text;
}
