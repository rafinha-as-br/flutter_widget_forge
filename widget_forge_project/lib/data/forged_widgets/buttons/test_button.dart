
import 'package:flutter/material.dart';
import 'package:widget_forge_project/data/display/button_display.dart';
import 'package:widget_forge_project/data/entities/item.dart';

class TestButton extends StatefulWidget implements ButtonItem{
  TestButton({super.key});

  @override
  State<TestButton> createState() => _TestButtonState();

  @override
  String get description => 'Descrição de teste';

  @override
  String get itemName => 'Nome do botão teste';

  final WidgetStatesController _controller = WidgetStatesController();


  @override
  // TODO: implement buttonController
  WidgetStatesController get buttonController => _controller;

}

class _TestButtonState extends State<TestButton> {

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ButtonDisplayerCard(
        buttonName: widget.itemName,
        buttonDescription: widget.description,
        buttonController: widget.buttonController,
        buttonWidget: _Button(buttonController: widget.buttonController),
    );
  }


}

class _Button extends StatelessWidget {
  const _Button({required this.buttonController});

  final WidgetStatesController buttonController;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      statesController: buttonController,
      onPressed: () {},
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









