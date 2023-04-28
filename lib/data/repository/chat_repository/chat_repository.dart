
import 'dart:convert';

import 'package:flutter_template_riverpod/data/repository/chat_repository/response.dart';
import 'package:http/http.dart' as http;
class ChatRepository {
  Future<Response?> makeRequest({required String question}) async {
    final url = Uri.parse('https://api.openai.com/v1/completions');
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer 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',
    };
    final data = {
      'prompt': question,
      'model': 'text-davinci-002',
      'temperature': 0.5,
      'max_tokens': 50,
    };

    final response = await http.post(
        url, headers: headers, body: jsonEncode(data));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final text = jsonData['choices'][0]['text'];
      return Response.success(text);
      // handle the success response
    } else {
      final error = jsonDecode(response.body);
      final errorMessage = error['error']['message'];
      return  Response.error(errorMessage);
      // handle the error response
    }
  }
}