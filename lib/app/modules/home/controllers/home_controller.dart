import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt bannerPosition = 0.obs;
  TextEditingController searchController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    bannerPosition.value = 0;
    searchController = TextEditingController();
  }

  void updateBannerPosition(int position){
    bannerPosition.value = position;
    update([bannerPosition]);
  }
}
