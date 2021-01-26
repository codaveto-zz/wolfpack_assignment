import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

abstract class TransitionMaster {
  static Widget sharedAxisTransition(
      BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    return SharedAxisTransition(
      child: child,
      animation: animation,
      secondaryAnimation: secondaryAnimation,
      transitionType: SharedAxisTransitionType.vertical,
    );
  }

  static Widget fadeTransition(
      BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    return FadeTransition(
      child: child,
      opacity: animation,
    );
  }
}
