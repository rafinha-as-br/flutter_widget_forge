/* this screen is responsible for showing the category of a specific widget*/

import 'package:flutter/material.dart';

import '../../app/app_routes.dart';

class WidgetCategoryScreen extends StatelessWidget {
  const WidgetCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Column(
          spacing: 25,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Buttons',
                      style: TextStyle(
                          fontSize: 33,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    Text(
                      'No Flutter, Buttons são widgets '
                      'interativos responsáveis por disparar '
                      'ações a partir de eventos do usuário',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400
                      ),
                    )
                  ],
                ),
              ),
            ),

            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                physics: NeverScrollableScrollPhysics(),
                itemCount: _buttonsTypeList.length,
                itemBuilder: (context, index) {
                  final button = _buttonsTypeList[index];
                  return button;
                },
              ),
            )

          ],
        ),
      ),
    );
  }
}


final List<_WidgetTypeButton2> _buttonsTypeList = [
  _WidgetTypeButton2(
    text: 'Solid button',
    icon: Icons.smart_button,
  ),

  _WidgetTypeButton2(
    text: 'Rounded Button c',
    icon: Icons.smart_button,
  ),


];


class _WidgetTypeButton2 extends StatelessWidget {
  const _WidgetTypeButton2({required this.text, required this.icon});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        Navigator.of(context).pushNamed(AppRoutes.widgetsScreen);
      },
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Colors.black12),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Icon(
              icon,
              size: 70,
              color: Colors.white,
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
              ),
            ),
          ],
        ),
      ),
    );
  }
}
