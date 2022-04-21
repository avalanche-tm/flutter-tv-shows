import 'package:freezed_annotation/freezed_annotation.dart';

part 'show.freezed.dart';
part 'show.g.dart';

@freezed
class Show with _$Show {
  factory Show({
    @JsonKey(name: '_id') required String id,
    required String title,
    required String imageUrl,
    required int likesCount,
  }) = _Show;

  factory Show.fromJson(Map<String, dynamic> json) => _$ShowFromJson(json);
}
