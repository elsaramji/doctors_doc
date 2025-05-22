// routes.dart

import 'package:doctors_doc/futures/bording/presentation/views/bording_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: BordingView.route,
  routes: [
    GoRoute(
      path: BordingView.route,
      pageBuilder: (context, state) {
        return _easyTransition(const BordingView());
      },
    ),
  ],
);

CustomTransitionPage _easyTransition(Widget child) {
  return CustomTransitionPage(
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final opacityAnimation = Tween<double>(
        begin: 0,
        end: 1,
      ).animate(animation);

      return FadeTransition(
        opacity: opacityAnimation,
        child: ScaleTransition(
          scale: Tween<double>(begin: 0.95, end: 1).animate(animation),
          child: child,
        ),
      );
    },
  );
}





/*
/// Make fun transition as commit
CustomTransitionPage _funnyTransition(Widget child) {
  return CustomTransitionPage(
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final offsetAnimation = Tween<Offset>(
        begin: const Offset(1.0, -1.0),
        end: Offset.zero,
      ).animate(animation);

      final rotateAnimation =
          Tween<double>(begin: 0.5, end: 0).animate(animation);

      return SlideTransition(
        position: offsetAnimation,
        child: RotationTransition(
          turns: rotateAnimation,
          child: child,
        ),
      );
    },
  );
}
*/