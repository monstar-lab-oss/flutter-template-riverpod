// chat_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template_riverpod/presentation/feature/chat/chat_page_view_model.dart';
import 'package:flutter_template_riverpod/presentation/feature/chat/widgets/message_bubble.dart';
import 'package:flutter_template_riverpod/presentation/feature/chat/widgets/message_composer.dart';


import '../../../data/repository/chat_repository/chat_repository.dart';
import 'chat_page_state.dart';


final chatProvider =
    StateNotifierProvider.autoDispose<ChatPageViewModel, ChatPageState>(
        (ref) => ChatPageViewModel(
              chatRepository: ChatRepository(),
            ));

class ChatPage extends ConsumerStatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends ConsumerState<ChatPage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(chatProvider);
    final viewModel = ref.read(chatProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Ask me anything')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(),
            Expanded(
              child: ListView(
                children: [
                  ...state.messages.map(
                    (msg) => ChatBubble(
                      message: msg.text,
                      isSentByMe: msg.isUserText,
                    ),
                  ),
                ],
              ),
            ),
            MessageInput(
              onSend: (question) async {
                await viewModel.askQuestion(question: question);
              },
            ),
          ],
        ),
      ),
    );
  }
}
