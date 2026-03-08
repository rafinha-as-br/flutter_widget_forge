
import 'package:flutter/material.dart';
import 'package:widget_forge_project/data/entities/item.dart';
import 'package:widget_forge_project/ui/theme/app_decorations.dart';

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
  WidgetStatesController get buttonController => _controller;

}

class _TestButtonState extends State<TestButton> {

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _Button(buttonController: widget.buttonController);
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
          borderRadius: AppDecorations.borderRadiusSmall,
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









