import 'dart:math' as math;

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> with TickerProviderStateMixin {
  late final AnimationController animationController = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 202, 223, 233),
      child: Center(
        child: AnimatedBuilder(
          animation: animationController,
          child: const FlutterLogo(
            size: 100,
          ),
          builder: (BuildContext context, Widget? child) {
            return Column(
              children: [
                const SizedBox(height: 40),
                Transform.rotate(
                  angle: animationController.value * 5.0 * math.pi,
                  child: child,
                ),
                const SizedBox(height: 40),
                Transform.translate(
                  offset: Offset(animationController.value * -120,
                      animationController.value * -45),
                  child: child,
                ),
                const SizedBox(height: 80),
                Transform.scale(
                  scale: 2.5,
                  child: child,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
