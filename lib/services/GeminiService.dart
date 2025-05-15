import 'package:http/http.dart' as http;
import 'dart:convert';

class GeminiService {
  static Future<String> fetchGeminiResponse(String userInput) async {
    final headers = {'Content-Type': 'application/json'};
    final url = Uri.parse(
      'https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=AIzaSyCIN7BOQxUvnrwuJTAcpK7bqOwx3RMbNpI',
    );

    final body = json.encode({
      "contents": [
        {
          "parts": [
            {"text": "You are designed to identify if a certain species of fish is endangered or not. Answer questions that the user will ask you about fish and make sure to mention their endangered status."},
            {"text": "Now help the user $userInput"}
          ]
        }
      ]
    });

    final request = http.Request('POST', url);
    request.headers.addAll(headers);
    request.body = body;

    try {
      final response = await request.send();
      if (response.statusCode == 200) {
        final result = await response.stream.bytesToString();
        final decoded = json.decode(result);
        final content = decoded['candidates'][0]['content']['parts'][0]['text'];
        return content ?? 'No response.';
      } else {
        return 'Error: ${response.reasonPhrase}';
      }
    } catch (e) {
      return 'Exception: $e';
    }
  }
}
