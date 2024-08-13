import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sooqista_app/utills/assets_paths.dart';

class PropertyDetailController extends GetxController {
  final currentSliderIndex = 0.obs;

  final sliders = [
    Image(image: AssetImage(AssetPaths.TSHIRT_SLIDER_IMAGE)),
    Image(image: AssetImage(AssetPaths.TSHIRT_SLIDER_IMAGE)),
    Image(image: AssetImage(AssetPaths.TSHIRT_SLIDER_IMAGE)),
    Image(image: AssetImage(AssetPaths.TSHIRT_SLIDER_IMAGE)),
  ];

  var selectedSize = ''.obs;

  void selectSize(String size) {
    selectedSize.value = size;
  }

  var quantity = 1.obs;
  void increaseQuantity() {
    quantity.value++;
  }

  void decreaseQuantity() {
    if (quantity.value > 1) quantity.value--;
  }
}
