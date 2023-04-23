// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_entry.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCartEntryCollection on Isar {
  IsarCollection<CartEntry> get cart => this.collection();
}

const CartEntrySchema = CollectionSchema(
  name: r'CartEntry',
  id: -2397115216930650610,
  properties: {
    r'count': PropertySchema(
      id: 0,
      name: r'count',
      type: IsarType.long,
    )
  },
  estimateSize: _cartEntryEstimateSize,
  serialize: _cartEntrySerialize,
  deserialize: _cartEntryDeserialize,
  deserializeProp: _cartEntryDeserializeProp,
  idName: r'productId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _cartEntryGetId,
  getLinks: _cartEntryGetLinks,
  attach: _cartEntryAttach,
  version: '3.1.0',
);

int _cartEntryEstimateSize(
  CartEntry object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _cartEntrySerialize(
  CartEntry object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.count);
}

CartEntry _cartEntryDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CartEntry();
  object.count = reader.readLong(offsets[0]);
  object.productId = id;
  return object;
}

P _cartEntryDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _cartEntryGetId(CartEntry object) {
  return object.productId;
}

List<IsarLinkBase<dynamic>> _cartEntryGetLinks(CartEntry object) {
  return [];
}

void _cartEntryAttach(IsarCollection<dynamic> col, Id id, CartEntry object) {
  object.productId = id;
}

extension CartEntryQueryWhereSort
    on QueryBuilder<CartEntry, CartEntry, QWhere> {
  QueryBuilder<CartEntry, CartEntry, QAfterWhere> anyProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CartEntryQueryWhere
    on QueryBuilder<CartEntry, CartEntry, QWhereClause> {
  QueryBuilder<CartEntry, CartEntry, QAfterWhereClause> productIdEqualTo(
      Id productId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: productId,
        upper: productId,
      ));
    });
  }

  QueryBuilder<CartEntry, CartEntry, QAfterWhereClause> productIdNotEqualTo(
      Id productId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: productId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: productId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: productId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: productId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<CartEntry, CartEntry, QAfterWhereClause> productIdGreaterThan(
      Id productId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: productId, includeLower: include),
      );
    });
  }

  QueryBuilder<CartEntry, CartEntry, QAfterWhereClause> productIdLessThan(
      Id productId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: productId, includeUpper: include),
      );
    });
  }

  QueryBuilder<CartEntry, CartEntry, QAfterWhereClause> productIdBetween(
    Id lowerProductId,
    Id upperProductId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerProductId,
        includeLower: includeLower,
        upper: upperProductId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CartEntryQueryFilter
    on QueryBuilder<CartEntry, CartEntry, QFilterCondition> {
  QueryBuilder<CartEntry, CartEntry, QAfterFilterCondition> countEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'count',
        value: value,
      ));
    });
  }

  QueryBuilder<CartEntry, CartEntry, QAfterFilterCondition> countGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'count',
        value: value,
      ));
    });
  }

  QueryBuilder<CartEntry, CartEntry, QAfterFilterCondition> countLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'count',
        value: value,
      ));
    });
  }

  QueryBuilder<CartEntry, CartEntry, QAfterFilterCondition> countBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'count',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CartEntry, CartEntry, QAfterFilterCondition> productIdEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productId',
        value: value,
      ));
    });
  }

  QueryBuilder<CartEntry, CartEntry, QAfterFilterCondition>
      productIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'productId',
        value: value,
      ));
    });
  }

  QueryBuilder<CartEntry, CartEntry, QAfterFilterCondition> productIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'productId',
        value: value,
      ));
    });
  }

  QueryBuilder<CartEntry, CartEntry, QAfterFilterCondition> productIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'productId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CartEntryQueryObject
    on QueryBuilder<CartEntry, CartEntry, QFilterCondition> {}

extension CartEntryQueryLinks
    on QueryBuilder<CartEntry, CartEntry, QFilterCondition> {}

extension CartEntryQuerySortBy on QueryBuilder<CartEntry, CartEntry, QSortBy> {
  QueryBuilder<CartEntry, CartEntry, QAfterSortBy> sortByCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.asc);
    });
  }

  QueryBuilder<CartEntry, CartEntry, QAfterSortBy> sortByCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.desc);
    });
  }
}

extension CartEntryQuerySortThenBy
    on QueryBuilder<CartEntry, CartEntry, QSortThenBy> {
  QueryBuilder<CartEntry, CartEntry, QAfterSortBy> thenByCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.asc);
    });
  }

  QueryBuilder<CartEntry, CartEntry, QAfterSortBy> thenByCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.desc);
    });
  }

  QueryBuilder<CartEntry, CartEntry, QAfterSortBy> thenByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.asc);
    });
  }

  QueryBuilder<CartEntry, CartEntry, QAfterSortBy> thenByProductIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.desc);
    });
  }
}

extension CartEntryQueryWhereDistinct
    on QueryBuilder<CartEntry, CartEntry, QDistinct> {
  QueryBuilder<CartEntry, CartEntry, QDistinct> distinctByCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'count');
    });
  }
}

extension CartEntryQueryProperty
    on QueryBuilder<CartEntry, CartEntry, QQueryProperty> {
  QueryBuilder<CartEntry, int, QQueryOperations> productIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'productId');
    });
  }

  QueryBuilder<CartEntry, int, QQueryOperations> countProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'count');
    });
  }
}
