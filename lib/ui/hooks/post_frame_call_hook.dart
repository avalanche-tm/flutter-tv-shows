import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// Calls function [callback] inside
/// WidgetsBinding.instance.addPostFrameCallback()
///
void usePostFrameCall(Function() callback) {
  useEffect(() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      callback();
    });
    return null;
  }, []);
}
