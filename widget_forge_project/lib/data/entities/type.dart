
import 'package:widget_forge_project/data/entities/item.dart';

class ItemType {
  final String typeName;
  final String typeDescription;
  final List<Item> items;

  ItemType({
    required this.typeName,
    required this.typeDescription,
    required this.items
  });
}