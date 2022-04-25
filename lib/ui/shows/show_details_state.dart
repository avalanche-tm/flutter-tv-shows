import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/shows/show_details.dart';

part 'show_details_state.freezed.dart';
part 'show_details_state.g.dart';

@freezed
class ShowDetailsState with _$ShowDetailsState {
  factory ShowDetailsState.loading(ShowDetails? details) =
      _ShowDetailsStateLoading;
  factory ShowDetailsState.data(ShowDetails? details) = _ShowDetailsStateData;
  factory ShowDetailsState.error(String errorMsg, ShowDetails? details) =
      _ShowDetailsStateError;

  factory ShowDetailsState.fromJson(Map<String, dynamic> json) =>
      _$ShowDetailsStateFromJson(json);
}
