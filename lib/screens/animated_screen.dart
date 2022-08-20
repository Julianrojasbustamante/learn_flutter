import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(20);

  void changeShape() {
    setState(() {
      final rand = Random();
      _width = rand.nextInt(300).toDouble() + 70;
      _height = rand.nextInt(300).toDouble() + 70;
      _color = Color.fromRGBO(rand.nextInt(255), rand.nextInt(255), rand.nextInt(255), 0.9);
      _borderRadius = BorderRadius.circular(rand.nextInt(100).toDouble() + 10);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 400),
          curve: Curves.bounceIn ,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: Icon(Icons.play_circle_outline, size: 35),
      ),
    );
  }
}
