


import 'package:flutter_chat_gpt/features/text_completion/data/models/text_completion_model.dart';

abstract class TextCompletionRepository {
  Future<TextCompletionModel> getTextCompletion(String query);
}