import 'package:flutter/material.dart';
import 'package:widget_forge_project/app/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Column(
          spacing: 25,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                        'Widget Forge App',
                      style: TextStyle(
                        fontSize: 33,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    Text(
                        'Escolha uma categoria de widgets',
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
                itemCount: buttonsList.length,
                itemBuilder: (context, index) {
                  final button = buttonsList[index];
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


final List<_WidgetTypeButton> buttonsList = [
  _WidgetTypeButton(
      text: 'Cards',
      icon: Icons.credit_card_rounded,
  ),

  _WidgetTypeButton(
      text: 'Buttons',
      icon: Icons.smart_button,
  ),


];


class _WidgetTypeButton extends StatelessWidget {
  const _WidgetTypeButton({required this.text, required this.icon});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        Navigator.of(context).pushNamed(AppRoutes.widgetCategoryScreen);
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

