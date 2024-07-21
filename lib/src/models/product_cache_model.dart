import 'dart:convert';

import 'package:isar/isar.dart';

import 'product.dart';

part 'product_cache_model.g.dart';

@embedded
class ProductCacheModel {
  ProductCacheModel({
    this.productID,
    this.name,
    this.description,
    this.price,
    this.photos,
    this.categories,
    this.isAvailable,
    this.quantity,
    this.ratings,
  });

  late String? productID;

  late String? name;

  late String? description;

  late String? price;

  late List<String>? photos;

  late List<String>? categories;

  late bool? isAvailable;

  late int? quantity;

  late int? ratings;

  factory ProductCacheModel.fromProduct(Product product) => ProductCacheModel(
        productID: product.id,
        name: product.name,
        description: product.description,
        price: json.encode(product.price),
        photos: product.photos,
        categories: product.categories,
        isAvailable: product.isAvailable,
        quantity: product.quantity,
        ratings: product.ratings,
      );
}
