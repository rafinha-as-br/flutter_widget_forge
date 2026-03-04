
import 'package:flutter/material.dart';

class TestButton extends StatelessWidget {
  const TestButton({super.key, required this.controller});

  final WidgetStatesController controller;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      statesController: controller,
      onPressed: () {

      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 12,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 4,
      ),
      child: const Text(
        "Botão exemplo",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
