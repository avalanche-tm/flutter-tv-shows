import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Returns latest valid data from AsyncValue [value]
/// or [defaultValue] if Future didn't return any data yet.
/// Used to cache FutureProvider data.

T useAsyncValueCache<T>(AsyncValue<T> value, {required T defaultValue}) {
  final hasData = value.asData != null;
  return useMemoized(
    () => value.asData ?? AsyncData<T>(defaultValue),
    [hasData],
  ).value;
}
