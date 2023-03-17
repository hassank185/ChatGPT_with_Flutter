


import 'package:flutter_chat_gpt/features/text_completion/data/models/text_completion_model.dart';
import 'package:flutter_chat_gpt/features/text_completion/data/remote_data_source/text_completion_remote_data_source.dart';
import 'package:flutter_chat_gpt/features/text_completion/domain/repository/text_completion_repository.dart';

class TextCompletionRepositoryImpl implements TextCompletionRepository{
  final TextCompletionRemoteDataSource remoteDataSource;

  TextCompletionRepositoryImpl({required this.remoteDataSource});


  @override
  Future<TextCompletionModel> getTextCompletion(String query) async =>
      remoteDataSource.getTextCompletion(query);


}