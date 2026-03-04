/* the category entity holds the name, description and the list of Objects  */

import 'item.dart';

class ItemCategory{
  final String name;
  final String description;
  final List<Item> widgets;

  ItemCategory(this.name, this.description, this.widgets);
}