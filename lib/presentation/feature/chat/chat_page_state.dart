import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_page_state.freezed.dart';

@freezed
class ChatPageState with _$ChatPageState {
  factory ChatPageState({
    @Default([]) List<Message> messages,
    String? question,
    @Default(true) loading,
    String? errorMessage,
  }) = _ChatPageState;
}

class Message {
  final String text;
  final bool isUserText;

  Message({
    required this.text,
    this.isUserText = true,
  });
}
