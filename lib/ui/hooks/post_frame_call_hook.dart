import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

void usePostFrameCall(Function() callback) {
  useEffect(() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      callback();
    });
    return null;
  }, []);
}
