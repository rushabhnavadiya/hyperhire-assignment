import 'package:get/get.dart';

class DashboardController extends GetxController {
  final tabPosition = 0.obs;

  @override
  void onInit() {
    super.onInit();
    tabPosition.value = 0;
  }

  void updateTabPosition(int position){
    tabPosition.value = position;
    update([tabPosition]);
  }
}
