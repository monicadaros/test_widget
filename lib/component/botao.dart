import 'package:flutter/material.dart';

class TestButton extends StatelessWidget {
  const TestButton({Key? key}) : super(key: key);

  final bool _desableButton = true;

  // void _desableButton(bool desable) {
  //   setState() {
  //     desable = !desable;
  //   }

  //   ;
  // }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        ElevatedButton(
          onPressed: () => _desableButton ? null : () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.pink),
          ),
          child: const Text("Ativado"),
        ),
        const SizedBox(height: 40),
        ElevatedButton(onPressed: (() {}), child: const Text("Desativado"))
      ],
    ));
  }
}
