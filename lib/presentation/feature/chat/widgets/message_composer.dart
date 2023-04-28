// widgets/message_composer.dart
import 'package:flutter/material.dart';

// class MessageComposer extends StatelessWidget {
//   MessageComposer({
//     required this.onSubmitted,
//     required this.awaitingResponse,
//     super.key,
//   });
//
//   final TextEditingController _messageController = TextEditingController();
//
//   final void Function(String) onSubmitted;
//   final bool awaitingResponse;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(12),
//       color: Theme.of(context).colorScheme.secondaryContainer.withOpacity(0.05),
//       child: SafeArea(
//         child: Row(
//           children: [
//             Expanded(
//               child: !awaitingResponse
//                   ? TextField(
//                 controller: _messageController,
//                 onSubmitted: onSubmitted,
//                 decoration: const InputDecoration(
//                   hintText: 'Write your message here...',
//                   border: InputBorder.none,
//                 ),
//               )
//                   : Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: const [
//                   SizedBox(
//                     height: 24,
//                     width: 24,
//                     child: CircularProgressIndicator(),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.all(16),
//                     child: Text('Fetching response...'),
//                   ),
//                 ],
//               ),
//             ),
//             IconButton(
//               onPressed: !awaitingResponse
//                   ? () => onSubmitted(_messageController.text)
//                   : null,
//               icon: const Icon(Icons.send),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


class MessageInput extends StatefulWidget {
  final Function(String) onSend;

  MessageInput({required this.onSend});

  @override
  _MessageInputState createState() => _MessageInputState();
}

class _MessageInputState extends State<MessageInput> {
  final TextEditingController _textController = TextEditingController();

  bool _isComposing = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _textController,
              decoration: InputDecoration.collapsed(
                hintText: 'Type a message',
              ),
              onChanged: (String text) {
                setState(() {
                  _isComposing = text.isNotEmpty;
                });
              },
              onSubmitted: _handleSubmit,
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: _isComposing ? () => _handleSubmit(_textController.text) : null,
          ),
        ],
      ),
    );
  }

  void _handleSubmit(String text) {
    if (text.trim().isEmpty) return;

    widget.onSend(text);
    _textController.clear();

    setState(() {
      _isComposing = false;
    });
  }
}
