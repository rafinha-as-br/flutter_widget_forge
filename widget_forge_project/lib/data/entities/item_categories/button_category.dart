


import 'package:flutter/cupertino.dart';
import 'package:widget_forge_project/data/entities/item.dart';

class ButtonCategory extends Item{

  final WidgetStatesController buttonController;

  ButtonCategory({
    required super.name,
    required super.description,
    required super.widget,
    required this.buttonController,
  });
}