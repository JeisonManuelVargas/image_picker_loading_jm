import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_picker_loading_jm/image_picker_loading_jm.dart';

void main() {
  testWidgets('image empty test', (WidgetTester tester) async {
    try {
      ImagePickerLoadingJModel(
        image: "",
        imageError: "",
        buildBody: (e, r) => Container(),
      );
    } on AssertionError catch (e) {
      expect(e.message, "image cannot be empty");
    }
  });

  testWidgets('error image empty test', (WidgetTester tester) async {
    try {
      ImagePickerLoadingJModel(
        image: "https://static4.depositphotos.com/1015265/305/i/450/depositphotos_3054488-stock-photo-stunning-waterfall.jpg",
        imageError: "",
        buildBody: (e, r) => Container(),
      );
    } on AssertionError catch (e) {
      expect(e.message, "error image cannot be empty");
    }
  });

  testWidgets('is not network image', (WidgetTester tester) async {
    try {
      ImagePickerLoadingJModel(
        image: "test",
        typeImage: TypeImage.network,
        buildBody: (e, r) => Container(),
        imageError: "https://static4.depositphotos.com/1015265/305/i/450/depositphotos_3054488-stock-photo-stunning-waterfall.jpg",
      );
    } on AssertionError catch (e) {
      expect(e.message, "this image cannot be a network image, it is necessary to implement an assets image");
    }
  });

  testWidgets('is not assets image', (WidgetTester tester) async {
    try {
      ImagePickerLoadingJModel(
        typeImage: TypeImage.assets,
        buildBody: (e, r) => Container(),
        image: "https://static4.depositphotos.com/1015265/305/i/450/depositphotos_3054488-stock-photo-stunning-waterfall.jpg",
        imageError: "https://static4.depositphotos.com/1015265/305/i/450/depositphotos_3054488-stock-photo-stunning-waterfall.jpg",
      );
    } on AssertionError catch (e) {
      expect(e.message, "this image cannot be a network image, it is necessary to implement an assets image");
    }
  });
}
