
import 'package:flutter/cupertino.dart';
import 'package:widget_forge_project/data/entities/item.dart';

class ItemType {
  final String typeName;
  final String typeDescription;
  final IconData typeIcon;
  final List<Item> items;
  final String? typeBackgroundImage;

  ItemType({
    required this.typeName,
    required this.typeDescription,
    required this.typeIcon,
    required this.items,
    this.typeBackgroundImage
  });
}