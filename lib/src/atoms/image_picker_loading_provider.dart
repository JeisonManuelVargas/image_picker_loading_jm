import 'package:flutter/material.dart';
import 'package:image_picker_loading_jm/src/models/image_picker_loading_jm_model.dart';

class ImagePickerLoadingProvider extends InheritedWidget {
  final ImagePickerLoadingJModel imagePickerLoadingJModel;

  const ImagePickerLoadingProvider({
    Key? key,
    required Widget child,
    required this.imagePickerLoadingJModel,
  }) : super(key: key, child: child);

  static ImagePickerLoadingProvider of(BuildContext context) =>
      context.findAncestorWidgetOfExactType<ImagePickerLoadingProvider>()!;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
