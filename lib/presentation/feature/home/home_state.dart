import 'package:freezed_annotation/freezed_annotation.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({String? data}) = _HomeState;

  const HomeState._();
}
