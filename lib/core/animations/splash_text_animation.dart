import 'package:flutter/material.dart';

class SplashTextAnimation {
  late final AnimationController controller;
  late final Animation<double> opacity;
  late final Animation<double> scale;

  SplashTextAnimation({
    required TickerProvider vsync,
    Duration duration = const Duration(milliseconds: 1200),
  }) {
    controller = AnimationController(
      vsync: vsync,
      duration: duration,
    );

    opacity = Tween<double>(
      begin: 0.4,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeInOut,
      ),
    );

    scale = Tween<double>(
      begin: 0.95,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeOut,
      ),
    );
  }

  void start({bool repeat = true}) {
    if (repeat) {
      controller.repeat(reverse: true);
    } else {
      controller.forward();
    }
  }

  void dispose() {
    controller.dispose();
  }
}
