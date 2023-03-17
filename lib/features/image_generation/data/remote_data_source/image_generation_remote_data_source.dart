

import 'package:flutter_chat_gpt/features/image_generation/data/model/image_generation_model.dart';

abstract class ImageGenerationRemoteDataSource {


  Future<ImageGenerationModel> getGenerateImages(String query);
}