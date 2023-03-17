

import 'package:flutter_chat_gpt/features/text_completion/data/models/text_completion_model.dart';
import 'package:flutter_chat_gpt/features/text_completion/domain/repository/text_completion_repository.dart';

class TextCompletionUseCase{
  final TextCompletionRepository repository;

  TextCompletionUseCase({required this.repository});

  Future<TextCompletionModel> call(String query) async{
    return repository.getTextCompletion(query);
  }
}