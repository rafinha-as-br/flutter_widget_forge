import 'package:flutter/material.dart';

class ItemCategoryDescriptionCard extends StatelessWidget {
  const ItemCategoryDescriptionCard({super.key, required this.name, required this.description});

  final String name;
  final String description;

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
              name,
              style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.w700
              ),
            ),
            Text(
              description,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400
              ),
            ),
            Text('Saiba mais...', style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
