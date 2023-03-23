import 'package:flutter/cupertino.dart';
import 'package:image_picker_loading_jm/src/atoms/image_picker_loading_provider.dart';

class BuildBodyAsset extends StatelessWidget {
  const BuildBodyAsset({super.key});

  @override
  Widget build(BuildContext context) {
    final data = ImagePickerLoadingProvider.of(context);
    return data.imagePickerLoadingJModel.buildBody(
      context,
      AssetImage(data.imagePickerLoadingJModel.image),
    );
  }
}
