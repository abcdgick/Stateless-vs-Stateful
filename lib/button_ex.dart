import 'package:flutter/material.dart';
import 'dart:math';

class ButtonStatelessWidget extends StatelessWidget {
  ButtonStatelessWidget({Key? key}) : super(key: key);

  final List colors = [
    const Color(0xFF1ABC9C),
    Colors.red,
    Colors.blue,
    Colors.grey,
    Colors.indigo
  ];
  final Random _random = Random();
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => _index = _random.nextInt(colors.length),
      style: TextButton.styleFrom(backgroundColor: colors[_index]),
      child: Text("Stateless Widget $_index",
          style: const TextStyle(color: Colors.white)),
    );
  }
}

class ButtonStatefulWidget extends StatefulWidget {
  const ButtonStatefulWidget({Key? key}) : super(key: key);

  @override
  _ButtonStatefulWidgetState createState() => _ButtonStatefulWidgetState();
}

class _ButtonStatefulWidgetState extends State<ButtonStatefulWidget> {
  final List colors = [
    const Color(0xFF1ABC9C),
    Colors.red,
    Colors.blue,
    Colors.grey,
    Colors.indigo
  ];
  final Random _random = Random();
  int _index = 0;

  void _changeColor() {
    setState(() {
      _index = _random.nextInt(colors.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => _changeColor(),
      style: TextButton.styleFrom(backgroundColor: colors[_index]),
      child: Text("Stateful Widget $_index",
          style: const TextStyle(color: Colors.white)),
    );
  }
}
