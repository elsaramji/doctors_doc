// routes.dart

import 'package:doctors_doc/config/routes/constant_routs.dart';
import 'package:doctors_doc/futures/auth/presentation/views/login_view.dart';
import 'package:doctors_doc/futures/bording/presentation/views/bording_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: BordingView.route,
  routes: [
    GoRoute(
      path: ConstantRouts.onbording,
      pageBuilder: (context, state) {
        return _easyTransition(const BordingView());
      },
    ),
    GoRoute(
      path: ConstantRouts.login,
      pageBuilder: (context, state) => _easyTransition( LoginView()),
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