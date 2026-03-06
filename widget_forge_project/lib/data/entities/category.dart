/* the category entity holds the name, description and the list of Objects  */

import 'package:flutter/material.dart';
import 'package:widget_forge_project/data/entities/type.dart';

class ItemCategory{
  final String name;
  final String description;
  final IconData categoryIcon;
  final List<ItemType> types;
  final String? backgroundImage;

  ItemCategory(
    {
      required this.name,
      required this.description,
      required this.categoryIcon,
      required this.types,
      this.backgroundImage
    }
  );
}