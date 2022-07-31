import 'package:flutter/material.dart';

class RippleRouteBuilder<T> extends PageRouteBuilder<T> {
  RippleRouteBuilder({
    required Widget page,
    Duration duration = const Duration(milliseconds: 100),
  }) : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionDuration: duration,
          transitionsBuilder: (
            context,
            animation,
            secondaryAnimation,
            child,
          ) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
}
