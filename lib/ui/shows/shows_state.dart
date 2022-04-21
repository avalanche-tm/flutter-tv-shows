import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/shows/show.dart';

part 'shows_state.freezed.dart';
part 'shows_state.g.dart';

@freezed
class ShowsState with _$ShowsState {
  factory ShowsState.loading(List<Show> shows) = ShowsStateLoading;
  factory ShowsState.loaded(List<Show> shows) = ShowsStateLoaded;
  factory ShowsState.error(String msg, List<Show> shows) = ShowsStateError;

  factory ShowsState.fromJson(Map<String, dynamic> json) =>
      _$ShowsStateFromJson(json);
}
