import 'package:flutter/material.dart';

class TestButton extends StatelessWidget {
  const TestButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        const ElevatedButton(
          onPressed: null,
          child: Text("Ativado"),
        ),
        const SizedBox(height: 40),
        ElevatedButton(onPressed: (() {}), child: const Text("Desativado"))
      ],
    ));
  }
}
