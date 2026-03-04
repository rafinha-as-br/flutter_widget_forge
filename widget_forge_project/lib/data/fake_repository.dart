/* this file contains a future fake data repository, used for instancing every
* /forged_widgets and showing on /ui screens */

import 'package:widget_forge_project/data/entities/category.dart';
import 'package:widget_forge_project/data/fake_data.dart';

class FakeRepository {


  final List<ItemCategory> categories = [

    ItemCategory(
        'Botões',
        'Usados para selecionar coisas',
        [
          testButton1
        ]
    )

  ];


}



