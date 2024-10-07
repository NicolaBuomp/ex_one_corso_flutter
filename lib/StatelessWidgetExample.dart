import 'dart:math';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class StatelessWidgetExample extends StatelessWidget {
  const StatelessWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    int randomNumber = Random().nextInt(8);
    final loadingAnimations = [
      LoadingAnimationWidget.staggeredDotsWave(
        color: const Color.fromARGB(255, 0, 0, 0),
        size: 200,
      ),
      LoadingAnimationWidget.fourRotatingDots(
        color: const Color.fromARGB(255, 0, 0, 0),
        size: 200,
      ),
      LoadingAnimationWidget.inkDrop(
        color: const Color.fromARGB(255, 0, 0, 0),
        size: 200,
      ),
      LoadingAnimationWidget.beat(
        color: const Color.fromARGB(255, 0, 0, 0),
        size: 200,
      ),
      LoadingAnimationWidget.progressiveDots(
        color: const Color.fromARGB(255, 0, 0, 0),
        size: 200,
      ),
      LoadingAnimationWidget.twistingDots(
        leftDotColor: const Color.fromARGB(255, 0, 0, 0),
        rightDotColor: Colors.red,
        size: 200,
      ),
      LoadingAnimationWidget.discreteCircle(
        color: const Color.fromARGB(255, 0, 0, 0),
        size: 200,
      ),
      LoadingAnimationWidget.hexagonDots(
        color: const Color.fromARGB(255, 0, 0, 0),
        size: 200,
      ),
    ];

    return Scaffold(
      body: Center(child: loadingAnimations[randomNumber]),
    );
  }
}
