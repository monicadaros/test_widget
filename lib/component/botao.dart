import 'package:flutter/material.dart';

class TestButton extends StatefulWidget {
  final String label;
  final Color cor;
  final Color disableCor;
  final bool click;
  final VoidCallback disable;
  const TestButton(
      {Key? key,
      required this.label,
      required this.cor,
      required this.disableCor,
      required this.click,
      required this.disable})
      : super(key: key);

  @override
  State<TestButton> createState() => _TestButtonState();
}

class _TestButtonState extends State<TestButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        ElevatedButton(
          onPressed: widget.click ? widget.disable : null,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                widget.click ? widget.cor : widget.disableCor),
          ),
          child: Text(
            widget.label,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ]),
    );
  }
}
