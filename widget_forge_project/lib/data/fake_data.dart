/* this file contains all the instance of the ForgedWidgets + item_category */

import 'package:flutter/cupertino.dart';
import 'package:widget_forge_project/data/entities/item_categories/button_category.dart';

import 'forged_widgets/buttons/test_button.dart';

/* buttons */
final _testButton1Controller = WidgetStatesController();
final testButton1 = ButtonCategory(
    name: 'Botão sólido 1',
    description: '',
    widget: TestButton(controller: _testButton1Controller),
    buttonController: _testButton1Controller
);


/* other widgets*/