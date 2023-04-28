import 'package:freezed_annotation/freezed_annotation.dart';

part 'response.freezed.dart';
part 'response.g.dart';

@freezed
class Response with _$Response {
  factory Response.success(String text) = SuccessResponse;
  factory Response.error(String message) = ErrorResponse;

  factory Response.fromJson(Map<String, dynamic> json) =>
      _$ResponseFromJson(json);
}
