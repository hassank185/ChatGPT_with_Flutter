


import 'package:flutter_chat_gpt/features/text_completion/data/models/text_completion_data.dart';

class TextCompletionModel {
  final num created;
  final List<TextCompletionData> choices;

  TextCompletionModel({required this.created, required this.choices});

  factory TextCompletionModel.fromJson(Map<String, dynamic> json){
    final textCompletionItems = json['choices'] as List;
    List<TextCompletionData> choices = textCompletionItems
    .map((singleItem) => TextCompletionData.fromJson(singleItem)).toList();

    return TextCompletionModel(created: json['created'], choices: choices);
  }
}