import 'package:freezed_annotation/freezed_annotation.dart';

part 'show_details.freezed.dart';
part 'show_details.g.dart';

@freezed
class ShowDetails with _$ShowDetails {
  const ShowDetails._();
  factory ShowDetails({
    @JsonKey(name: '_id') required String id,
    required String type,
    required String title,
    required String description,
    required String imageUrl,
    required int likesCount,
  }) = _ShowDetails;

  factory ShowDetails.fromJson(Map<String, dynamic> json) =>
      _$ShowDetailsFromJson(json);

  /// Fix random value issues in API response
  ShowDetails fixRandomErrors() {
    return copyWith(
      description: description.isEmpty ? 'No description' : description,
    );
  }
}
