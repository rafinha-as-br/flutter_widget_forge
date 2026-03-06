/* this is the main entity, responsible for keeping the Widget model and details data*/


import 'package:flutter/cupertino.dart';

abstract class Item extends Widget{

  final String itemName;
  final String description;

  const Item({super.key, required this.itemName, required this.description});
}

abstract class ButtonItem extends Item{
  final WidgetStatesController buttonController;

  const ButtonItem({
    super.key,
    required super.itemName,
    required super.description,
    required this.buttonController,
  });
}