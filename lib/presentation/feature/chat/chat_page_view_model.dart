import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template_riverpod/presentation/feature/chat/chat_page_state.dart';

import '../../../data/repository/chat_repository/chat_repository.dart';


class ChatPageViewModel extends StateNotifier<ChatPageState> {
  ChatPageViewModel({required this.chatRepository}) : super(ChatPageState());

  final ChatRepository chatRepository;

  Future<void> askQuestion({required String question}) async {
    final userQuestion = Message(text: question, isUserText: true);
    state = state.copyWith(
        loading: true, messages: List.from(state.messages)..add(userQuestion));

    final response = await chatRepository.makeRequest(question: question);
    response!.when(success: (response) {
      final responseMsg = Message(text: response, isUserText: false);
      List<Message> messages = List.from(state.messages)..add(responseMsg);

      state = state.copyWith(messages: messages);
    }, error: (errorMessage) {
      state = state.copyWith(errorMessage: errorMessage);
    });
    state = state.copyWith(loading: false);
  }
}
