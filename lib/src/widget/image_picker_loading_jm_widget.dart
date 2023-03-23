import 'package:flutter/material.dart';
import 'package:image_picker_loading_jm/src/atoms/image_picker_loading_provider.dart';
import 'package:image_picker_loading_jm/src/models/image_picker_loading_jm_model.dart';
import 'package:image_picker_loading_jm/src/organisms/cached_network_custom.dart';

class ImagePickerLoadingJM extends StatelessWidget {
  final ImagePickerLoadingJModel imagePickerLoadingJModel;

  const ImagePickerLoadingJM({
    super.key,
    required this.imagePickerLoadingJModel,
  });

  @override
  Widget build(BuildContext context) {
    return ImagePickerLoadingProvider(
      imagePickerLoadingJModel: imagePickerLoadingJModel,
      child: _handledGetBody(imagePickerLoadingJModel.typeImage),
    );
  }

  Widget _handledGetBody(TypeImage typeImage) {
    switch (typeImage) {
      case TypeImage.assets:
        return Container();
      case TypeImage.network:
        return const CachedNetworkCustom();
    }
  }
}
