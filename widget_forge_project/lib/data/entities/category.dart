/* the category entity holds the name, description and the list of Objects  */

import 'package:widget_forge_project/data/entities/type.dart';

class ItemCategory{
  final String name;
  final String description;
  final List<ItemType> types;

  ItemCategory({
    required this.name,
    required this.description,
    required this.types
  });
}