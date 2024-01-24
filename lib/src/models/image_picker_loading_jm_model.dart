import 'package:flutter/cupertino.dart';
import 'package:image_picker_loading_jm/src/tokens/constants.dart';
import 'package:image_picker_loading_jm/src/util/validations.dart';

typedef BuildBody = Widget Function(
  BuildContext context,
  ImageProvider provider,
);

enum TypeImage { assets, network }

class ImagePickerLoadingJModel {
  final String image;
  final String imageError;
  final TypeImage typeImage;
  final BuildBody buildBody;

  ImagePickerLoadingJModel({
    required this.image,
    required this.buildBody,
    required this.imageError,
    this.typeImage = TypeImage.network,
  })  : assert(image.isNotEmpty, imageEmpty),
        assert(imageError.isNotEmpty, errorImageEmpty),
        assert(!imageError.isNetworkImage, isNotNetworkImage),
        assert(_isNetwork(image, typeImage), _isNetworkMessage(typeImage));
}

bool _isNetwork(String image, TypeImage typeImage) {
  bool typeImageValidate = typeImage == TypeImage.network;
  if (typeImageValidate) return image.isNetworkImage;
  return !image.isNetworkImage;
}

String _isNetworkMessage(TypeImage typeImage) {
  bool typeImageValidate = typeImage == TypeImage.network;
  if (typeImageValidate) return isNotAssetsImage;
  return isNotNetworkImage;
}
