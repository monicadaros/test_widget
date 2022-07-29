import 'package:flutter/material.dart';

class TestButton extends StatefulWidget {
  const TestButton({Key? key}) : super(key: key);

  @override
  State<TestButton> createState() => _TestButtonState();
}

class _TestButtonState extends State<TestButton> {
  bool desableButton = true;

  void desable() {
    setState(() => desableButton = !desableButton);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        ElevatedButton(
          onPressed: desableButton ? null : () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(desableButton
                ? const Color.fromARGB(255, 85, 16, 39)
                : Colors.pink),
          ),
          child: Text(
            desableButton ? "Desativado" : "Ativado",
            style: const TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(
          child: ElevatedButton(
            onPressed: desable,
            child: Text(desableButton ? "Ativar" : "Desativar"),
          ),
        )
      ]),
    );
  }
}
