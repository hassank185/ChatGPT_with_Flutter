import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_chat_gpt/core/custom_exceptions.dart';
import 'package:flutter_chat_gpt/features/text_completion/data/models/text_completion_model.dart';
import 'package:flutter_chat_gpt/features/text_completion/domain/usecases/text_completion_usecase.dart';

part 'text_completion_state.dart';

class TextCompletionCubit extends Cubit<TextCompletionState> {
  final TextCompletionUseCase textCompletionUseCase;
  TextCompletionCubit({required this.textCompletionUseCase}) : super(TextCompletionInitial());

  Future<void> textCompletion({required String query}) async {
    emit(TextCompletionLoading());
    try{
      final textCompletionModelData = await textCompletionUseCase.call(query);
      emit(TextCompletionLoaded(textCompletionModel: textCompletionModelData));
    } on SocketException catch (e) {
      emit(TextCompletionFailure( e.message));
    } on ServerException catch (e) {
      emit(TextCompletionFailure( e.message));
    }
  }
}
