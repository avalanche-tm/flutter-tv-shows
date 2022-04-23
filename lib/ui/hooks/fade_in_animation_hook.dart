import 'package:flutter/animation.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// Creates basic fade in animation
/// Optionally takes [duration] and [curve], otherwise
/// defaults to 1 second and Curves.easeIn respectively
CurvedAnimation useFadeInAnimation({Duration? duration, Curve? curve}) {
  final controller = useAnimationController(
    duration: duration ?? const Duration(seconds: 1),
  )..forward();

  return useMemoized(
    () => CurvedAnimation(parent: controller, curve: curve ?? Curves.easeIn),
  );
}
