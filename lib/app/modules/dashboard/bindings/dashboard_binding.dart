import 'package:get/get.dart';

import '../../category/controllers/category_controller.dart';
import '../../community/controllers/community_controller.dart';
import '../../home/controllers/home_controller.dart';
import '../../profile/controllers/profile_controller.dart';
import '../controllers/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<CategoryController>(
      () => CategoryController(),
    );
    Get.lazyPut<CommunityController>(
      () => CommunityController(),
    );
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
  }
}
