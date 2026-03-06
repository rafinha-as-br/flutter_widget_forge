
import 'package:flutter/material.dart';
import 'package:widget_forge_project/data/entities/category.dart';
import 'package:widget_forge_project/data/entities/type.dart';
import 'package:widget_forge_project/data/forged_widgets/buttons/test_button.dart';

final categories = [

  ItemCategory(
      name: 'Buttons',
      description: 'Feitos para selecionar',
      categoryIcon: Icons.smart_button,
      types: [

        ItemType(
            typeName: 'Botões sólidos',
            typeDescription: 'Botões com o fundo preenchido',
            typeIcon: Icons.smart_button,
            items: [

              TestButton()


            ],
          typeBackgroundImage: 'assets/images/buttons_background.jpg'

        )
      ],

    backgroundImage: 'assets/images/buttons_background.jpg'
  ),
  

];