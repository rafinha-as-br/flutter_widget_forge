/* this is the main entity, responsible for keeping the Widget model and details data*/


import 'package:flutter/cupertino.dart';

abstract class Item {

  final String itemName;
  final String description;

  Item({required this.itemName, required this.description});
}

abstract class ButtonItem extends Item{
  final WidgetStatesController buttonController;

  ButtonItem({
    required super.itemName,
    required super.description,
    required this.buttonController,
  });
}