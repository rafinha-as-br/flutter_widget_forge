import 'package:flutter/material.dart';

class HomeScreenCard extends StatelessWidget {
  const HomeScreenCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
