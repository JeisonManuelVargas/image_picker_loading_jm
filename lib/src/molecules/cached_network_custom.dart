import 'package:image_picker_loading_jm/src/atoms/image_picker_loading_provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:image_picker_loading_jm/src/tokens/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:shimmer/shimmer.dart';

class CachedNetworkCustom extends StatelessWidget {
  const CachedNetworkCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = ImagePickerLoadingProvider.of(context);

    return CachedNetworkImage(
      imageUrl: data.imagePickerLoadingJModel.image,
      imageBuilder: (context, url) => data.imagePickerLoadingJModel.buildBody(
        context,
        url,
      ),
      progressIndicatorBuilder: (context, url, indicator) => Shimmer.fromColors(
        baseColor: primaryColor,
        highlightColor: secondColor,
        child: data.imagePickerLoadingJModel.buildBody(
          context,
          NetworkImage(url),
        ),
      ),
      errorWidget: (context, url, _) => data.imagePickerLoadingJModel.buildBody(
        context,
        AssetImage(data.imagePickerLoadingJModel.imageError),
      ),
    );
  }
}
