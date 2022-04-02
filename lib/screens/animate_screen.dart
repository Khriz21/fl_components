import 'dart:math' show Random;

import 'package:flutter/material.dart';

class AnimateScreen extends StatefulWidget {
  const AnimateScreen({Key? key}) : super(key: key);

  @override
  State<AnimateScreen> createState() => _AnimateScreenState();
}

class _AnimateScreenState extends State<AnimateScreen> {
  double _hight = 100;
  double _width = 100;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _radio = BorderRadius.circular(10);

  void changeShape() {
    _hight = Random().nextInt(400).toDouble() + 70;
    _width = Random().nextInt(400).toDouble() + 70;
    _color = Color.fromRGBO(
        Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), 1);
    _radio = BorderRadius.circular(Random().nextInt(400).toDouble() + 70);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contenedor animado'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInCubic,
          height: _hight,
          width: _width,
          decoration: BoxDecoration(color: _color, borderRadius: _radio),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: changeShape,
          child: const Icon(
            Icons.play_circle_rounded,
            size: 40,
          )),
    );
  }
}
