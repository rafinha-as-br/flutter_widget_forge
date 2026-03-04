/* this is the main entity, responsible for keeping the Widget model and details data*/

import 'package:flutter/widgets.dart';

class Item {

  final String name;
  final String description;
  final Widget widget;

  Item({required this.name, required this.description, required this.widget});
}