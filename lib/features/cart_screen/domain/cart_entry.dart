import 'package:isar/isar.dart';

part 'cart_entry.g.dart';

@Collection(accessor: 'cart')
class CartEntry {
  late Id productId;
  int count = 0;
}
