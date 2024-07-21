// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_cache_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetOrderCacheModelCollection on Isar {
  IsarCollection<OrderCacheModel> get orderCacheModels => this.collection();
}

const OrderCacheModelSchema = CollectionSchema(
  name: r'OrderCacheModel',
  id: -8741687539267295108,
  properties: {
    r'cardEndingIn': PropertySchema(
      id: 0,
      name: r'cardEndingIn',
      type: IsarType.string,
    ),
    r'createdAt': PropertySchema(
      id: 1,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'delivery': PropertySchema(
      id: 2,
      name: r'delivery',
      type: IsarType.string,
    ),
    r'orderID': PropertySchema(
      id: 3,
      name: r'orderID',
      type: IsarType.string,
    ),
    r'phone1': PropertySchema(
      id: 4,
      name: r'phone1',
      type: IsarType.string,
    ),
    r'phone2': PropertySchema(
      id: 5,
      name: r'phone2',
      type: IsarType.string,
    ),
    r'pickup': PropertySchema(
      id: 6,
      name: r'pickup',
      type: IsarType.string,
    ),
    r'products': PropertySchema(
      id: 7,
      name: r'products',
      type: IsarType.objectList,
      target: r'ProductCacheModel',
    ),
    r'status': PropertySchema(
      id: 8,
      name: r'status',
      type: IsarType.string,
    ),
    r'subTotal': PropertySchema(
      id: 9,
      name: r'subTotal',
      type: IsarType.string,
    )
  },
  estimateSize: _orderCacheModelEstimateSize,
  serialize: _orderCacheModelSerialize,
  deserialize: _orderCacheModelDeserialize,
  deserializeProp: _orderCacheModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'createdAt': IndexSchema(
      id: -3433535483987302584,
      name: r'createdAt',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'createdAt',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {r'ProductCacheModel': ProductCacheModelSchema},
  getId: _orderCacheModelGetId,
  getLinks: _orderCacheModelGetLinks,
  attach: _orderCacheModelAttach,
  version: '3.1.0+1',
);

int _orderCacheModelEstimateSize(
  OrderCacheModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.cardEndingIn.length * 3;
  {
    final value = object.delivery;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.orderID.length * 3;
  bytesCount += 3 + object.phone1.length * 3;
  {
    final value = object.phone2;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.pickup.length * 3;
  bytesCount += 3 + object.products.length * 3;
  {
    final offsets = allOffsets[ProductCacheModel]!;
    for (var i = 0; i < object.products.length; i++) {
      final value = object.products[i];
      bytesCount +=
          ProductCacheModelSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.status.length * 3;
  bytesCount += 3 + object.subTotal.length * 3;
  return bytesCount;
}

void _orderCacheModelSerialize(
  OrderCacheModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.cardEndingIn);
  writer.writeDateTime(offsets[1], object.createdAt);
  writer.writeString(offsets[2], object.delivery);
  writer.writeString(offsets[3], object.orderID);
  writer.writeString(offsets[4], object.phone1);
  writer.writeString(offsets[5], object.phone2);
  writer.writeString(offsets[6], object.pickup);
  writer.writeObjectList<ProductCacheModel>(
    offsets[7],
    allOffsets,
    ProductCacheModelSchema.serialize,
    object.products,
  );
  writer.writeString(offsets[8], object.status);
  writer.writeString(offsets[9], object.subTotal);
}

OrderCacheModel _orderCacheModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = OrderCacheModel(
    cardEndingIn: reader.readString(offsets[0]),
    createdAt: reader.readDateTime(offsets[1]),
    delivery: reader.readStringOrNull(offsets[2]),
    orderID: reader.readString(offsets[3]),
    phone1: reader.readString(offsets[4]),
    phone2: reader.readStringOrNull(offsets[5]),
    pickup: reader.readString(offsets[6]),
    products: reader.readObjectList<ProductCacheModel>(
          offsets[7],
          ProductCacheModelSchema.deserialize,
          allOffsets,
          ProductCacheModel(),
        ) ??
        [],
    status: reader.readString(offsets[8]),
    subTotal: reader.readString(offsets[9]),
  );
  object.id = id;
  return object;
}

P _orderCacheModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readObjectList<ProductCacheModel>(
            offset,
            ProductCacheModelSchema.deserialize,
            allOffsets,
            ProductCacheModel(),
          ) ??
          []) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _orderCacheModelGetId(OrderCacheModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _orderCacheModelGetLinks(OrderCacheModel object) {
  return [];
}

void _orderCacheModelAttach(
    IsarCollection<dynamic> col, Id id, OrderCacheModel object) {
  object.id = id;
}

extension OrderCacheModelByIndex on IsarCollection<OrderCacheModel> {
  Future<OrderCacheModel?> getByCreatedAt(DateTime createdAt) {
    return getByIndex(r'createdAt', [createdAt]);
  }

  OrderCacheModel? getByCreatedAtSync(DateTime createdAt) {
    return getByIndexSync(r'createdAt', [createdAt]);
  }

  Future<bool> deleteByCreatedAt(DateTime createdAt) {
    return deleteByIndex(r'createdAt', [createdAt]);
  }

  bool deleteByCreatedAtSync(DateTime createdAt) {
    return deleteByIndexSync(r'createdAt', [createdAt]);
  }

  Future<List<OrderCacheModel?>> getAllByCreatedAt(
      List<DateTime> createdAtValues) {
    final values = createdAtValues.map((e) => [e]).toList();
    return getAllByIndex(r'createdAt', values);
  }

  List<OrderCacheModel?> getAllByCreatedAtSync(List<DateTime> createdAtValues) {
    final values = createdAtValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'createdAt', values);
  }

  Future<int> deleteAllByCreatedAt(List<DateTime> createdAtValues) {
    final values = createdAtValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'createdAt', values);
  }

  int deleteAllByCreatedAtSync(List<DateTime> createdAtValues) {
    final values = createdAtValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'createdAt', values);
  }

  Future<Id> putByCreatedAt(OrderCacheModel object) {
    return putByIndex(r'createdAt', object);
  }

  Id putByCreatedAtSync(OrderCacheModel object, {bool saveLinks = true}) {
    return putByIndexSync(r'createdAt', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByCreatedAt(List<OrderCacheModel> objects) {
    return putAllByIndex(r'createdAt', objects);
  }

  List<Id> putAllByCreatedAtSync(List<OrderCacheModel> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'createdAt', objects, saveLinks: saveLinks);
  }
}

extension OrderCacheModelQueryWhereSort
    on QueryBuilder<OrderCacheModel, OrderCacheModel, QWhere> {
  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterWhere> anyCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'createdAt'),
      );
    });
  }
}

extension OrderCacheModelQueryWhere
    on QueryBuilder<OrderCacheModel, OrderCacheModel, QWhereClause> {
  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterWhereClause>
      createdAtEqualTo(DateTime createdAt) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'createdAt',
        value: [createdAt],
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterWhereClause>
      createdAtNotEqualTo(DateTime createdAt) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'createdAt',
              lower: [],
              upper: [createdAt],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'createdAt',
              lower: [createdAt],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'createdAt',
              lower: [createdAt],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'createdAt',
              lower: [],
              upper: [createdAt],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterWhereClause>
      createdAtGreaterThan(
    DateTime createdAt, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'createdAt',
        lower: [createdAt],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterWhereClause>
      createdAtLessThan(
    DateTime createdAt, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'createdAt',
        lower: [],
        upper: [createdAt],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterWhereClause>
      createdAtBetween(
    DateTime lowerCreatedAt,
    DateTime upperCreatedAt, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'createdAt',
        lower: [lowerCreatedAt],
        includeLower: includeLower,
        upper: [upperCreatedAt],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension OrderCacheModelQueryFilter
    on QueryBuilder<OrderCacheModel, OrderCacheModel, QFilterCondition> {
  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      cardEndingInEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cardEndingIn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      cardEndingInGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cardEndingIn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      cardEndingInLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cardEndingIn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      cardEndingInBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cardEndingIn',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      cardEndingInStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cardEndingIn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      cardEndingInEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cardEndingIn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      cardEndingInContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cardEndingIn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      cardEndingInMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cardEndingIn',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      cardEndingInIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cardEndingIn',
        value: '',
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      cardEndingInIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cardEndingIn',
        value: '',
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      createdAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      deliveryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'delivery',
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      deliveryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'delivery',
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      deliveryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'delivery',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      deliveryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'delivery',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      deliveryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'delivery',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      deliveryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'delivery',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      deliveryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'delivery',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      deliveryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'delivery',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      deliveryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'delivery',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      deliveryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'delivery',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      deliveryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'delivery',
        value: '',
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      deliveryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'delivery',
        value: '',
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      orderIDEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'orderID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      orderIDGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'orderID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      orderIDLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'orderID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      orderIDBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'orderID',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      orderIDStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'orderID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      orderIDEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'orderID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      orderIDContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'orderID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      orderIDMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'orderID',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      orderIDIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'orderID',
        value: '',
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      orderIDIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'orderID',
        value: '',
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      phone1EqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      phone1GreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'phone1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      phone1LessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'phone1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      phone1Between(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'phone1',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      phone1StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'phone1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      phone1EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'phone1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      phone1Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'phone1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      phone1Matches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'phone1',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      phone1IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone1',
        value: '',
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      phone1IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phone1',
        value: '',
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      phone2IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'phone2',
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      phone2IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'phone2',
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      phone2EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      phone2GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'phone2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      phone2LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'phone2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      phone2Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'phone2',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      phone2StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'phone2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      phone2EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'phone2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      phone2Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'phone2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      phone2Matches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'phone2',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      phone2IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone2',
        value: '',
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      phone2IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phone2',
        value: '',
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      pickupEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pickup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      pickupGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pickup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      pickupLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pickup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      pickupBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pickup',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      pickupStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'pickup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      pickupEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'pickup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      pickupContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'pickup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      pickupMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'pickup',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      pickupIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pickup',
        value: '',
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      pickupIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'pickup',
        value: '',
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      productsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'products',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      productsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'products',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      productsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'products',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      productsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'products',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      productsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'products',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      productsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'products',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      statusEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      statusGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      statusLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      statusBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      statusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      statusMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      subTotalEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subTotal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      subTotalGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subTotal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      subTotalLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subTotal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      subTotalBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subTotal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      subTotalStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'subTotal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      subTotalEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'subTotal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      subTotalContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'subTotal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      subTotalMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'subTotal',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      subTotalIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subTotal',
        value: '',
      ));
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      subTotalIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'subTotal',
        value: '',
      ));
    });
  }
}

extension OrderCacheModelQueryObject
    on QueryBuilder<OrderCacheModel, OrderCacheModel, QFilterCondition> {
  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterFilterCondition>
      productsElement(FilterQuery<ProductCacheModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'products');
    });
  }
}

extension OrderCacheModelQueryLinks
    on QueryBuilder<OrderCacheModel, OrderCacheModel, QFilterCondition> {}

extension OrderCacheModelQuerySortBy
    on QueryBuilder<OrderCacheModel, OrderCacheModel, QSortBy> {
  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy>
      sortByCardEndingIn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardEndingIn', Sort.asc);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy>
      sortByCardEndingInDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardEndingIn', Sort.desc);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy>
      sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy>
      sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy>
      sortByDelivery() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'delivery', Sort.asc);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy>
      sortByDeliveryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'delivery', Sort.desc);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy> sortByOrderID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderID', Sort.asc);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy>
      sortByOrderIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderID', Sort.desc);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy> sortByPhone1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone1', Sort.asc);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy>
      sortByPhone1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone1', Sort.desc);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy> sortByPhone2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone2', Sort.asc);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy>
      sortByPhone2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone2', Sort.desc);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy> sortByPickup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pickup', Sort.asc);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy>
      sortByPickupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pickup', Sort.desc);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy>
      sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy>
      sortBySubTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subTotal', Sort.asc);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy>
      sortBySubTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subTotal', Sort.desc);
    });
  }
}

extension OrderCacheModelQuerySortThenBy
    on QueryBuilder<OrderCacheModel, OrderCacheModel, QSortThenBy> {
  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy>
      thenByCardEndingIn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardEndingIn', Sort.asc);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy>
      thenByCardEndingInDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardEndingIn', Sort.desc);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy>
      thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy>
      thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy>
      thenByDelivery() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'delivery', Sort.asc);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy>
      thenByDeliveryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'delivery', Sort.desc);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy> thenByOrderID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderID', Sort.asc);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy>
      thenByOrderIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderID', Sort.desc);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy> thenByPhone1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone1', Sort.asc);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy>
      thenByPhone1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone1', Sort.desc);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy> thenByPhone2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone2', Sort.asc);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy>
      thenByPhone2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone2', Sort.desc);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy> thenByPickup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pickup', Sort.asc);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy>
      thenByPickupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pickup', Sort.desc);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy>
      thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy>
      thenBySubTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subTotal', Sort.asc);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QAfterSortBy>
      thenBySubTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subTotal', Sort.desc);
    });
  }
}

extension OrderCacheModelQueryWhereDistinct
    on QueryBuilder<OrderCacheModel, OrderCacheModel, QDistinct> {
  QueryBuilder<OrderCacheModel, OrderCacheModel, QDistinct>
      distinctByCardEndingIn({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cardEndingIn', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QDistinct>
      distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QDistinct> distinctByDelivery(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'delivery', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QDistinct> distinctByOrderID(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'orderID', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QDistinct> distinctByPhone1(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phone1', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QDistinct> distinctByPhone2(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phone2', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QDistinct> distinctByPickup(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pickup', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QDistinct> distinctByStatus(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<OrderCacheModel, OrderCacheModel, QDistinct> distinctBySubTotal(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subTotal', caseSensitive: caseSensitive);
    });
  }
}

extension OrderCacheModelQueryProperty
    on QueryBuilder<OrderCacheModel, OrderCacheModel, QQueryProperty> {
  QueryBuilder<OrderCacheModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<OrderCacheModel, String, QQueryOperations>
      cardEndingInProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cardEndingIn');
    });
  }

  QueryBuilder<OrderCacheModel, DateTime, QQueryOperations>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<OrderCacheModel, String?, QQueryOperations> deliveryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'delivery');
    });
  }

  QueryBuilder<OrderCacheModel, String, QQueryOperations> orderIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'orderID');
    });
  }

  QueryBuilder<OrderCacheModel, String, QQueryOperations> phone1Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phone1');
    });
  }

  QueryBuilder<OrderCacheModel, String?, QQueryOperations> phone2Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phone2');
    });
  }

  QueryBuilder<OrderCacheModel, String, QQueryOperations> pickupProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pickup');
    });
  }

  QueryBuilder<OrderCacheModel, List<ProductCacheModel>, QQueryOperations>
      productsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'products');
    });
  }

  QueryBuilder<OrderCacheModel, String, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<OrderCacheModel, String, QQueryOperations> subTotalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subTotal');
    });
  }
}
