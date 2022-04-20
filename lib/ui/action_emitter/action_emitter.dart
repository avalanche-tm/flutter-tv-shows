import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/rxdart.dart';

abstract class ActionEmitter<T> {
  Stream<T> get action;
}

mixin StateNotifierActionEmitterMixin<T, R> on StateNotifier<R>
    implements ActionEmitter<T> {
  final _actionSubject = PublishSubject<T>();

  @override
  Stream<T> get action => _actionSubject;

  @override
  void dispose() {
    _actionSubject.close();
    super.dispose();
  }

  @protected
  void emitAction(T action) {
    _actionSubject.add(action);
  }
}

mixin ChangeNotifierActionEmitterMixin<T> on ChangeNotifier
    implements ActionEmitter<T> {
  final _actionSubject = PublishSubject<T>();

  @override
  Stream<T> get action => _actionSubject;

  @override
  void dispose() {
    _actionSubject.close();
    super.dispose();
  }

  @protected
  void emitAction(T action) {
    _actionSubject.add(action);
  }
}
