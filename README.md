# image_Picker_loading_jm

[![License: MIT][license_badge]][license_link]

This package allows us to easily use the libraries already created and published in dart.dev "shimmer" and "cached_network_image"

[![Alt text](https://img.youtube.com/vi/WxKQegyY8L0/0.jpg)](https://www.youtube.com/watch?v=WxKQegyY8L0)


## How to Use

```sh    
import 'package:image_picker_loading_jm/image_picker_loading_jm.dart';
  

    ImagePickerLoadingJM(
       imagePickerLoadingJModel: ImagePickerLoadingJModel(
         image: "https://thumbs.dreamstime.com/b/beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.jpg",
         imageError: "assets/image/image.jpeg",
         buildBody: (_, provider) => Container(
           height: 300,
           width: 300,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(30),
             image: DecorationImage(
               image: provider,
               fit: BoxFit.cover,
             ),
           ),
         ),
       ),
     );
```

## parameters

```sh
all parameters are sent via the ImagePickerLoadingJModel model

    image                             Receives a mandatory String, and allows us to obtain the url or path of the image we want to display.
    imageError                        Receives a mandatory String, and allows us to get the path of the error image, only asset images can be sent.
    typeImage                         Receives a TypeImage, this field is not required and allows us to know the type of image we want to display in our widget, Asset or Network.
    buildBody                         Required field, receives a BuildBody data type

```