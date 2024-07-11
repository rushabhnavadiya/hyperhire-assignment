import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hyperhire_assignment/app/constants/constant_images.dart';
import 'package:hyperhire_assignment/app/modules/category/views/category_view.dart';
import 'package:hyperhire_assignment/app/modules/community/views/community_view.dart';
import 'package:hyperhire_assignment/app/modules/home/views/home_view.dart';
import 'package:hyperhire_assignment/app/modules/profile/views/profile_view.dart';

import '../../../constants/constant_colors.dart';
import '../../../constants/constant_textstyles.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  static const List<Widget> tabs = [
    HomeView(),
    CategoryView(),
    CommunityView(),
    ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Obx(() {
            return tabs[controller.tabPosition.value];
          }),
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(10),),
          child: Container(
            color: bottom1GrayColor,
            padding: const EdgeInsets.only(top: 1),
            height: 64,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(10),),
              child: Obx(() {
                return BottomNavigationBar(
                  currentIndex: controller.tabPosition.value,
                  selectedLabelStyle: regular10pxFont().copyWith(color: subtitleColor),
                  unselectedLabelStyle: regular10pxFont().copyWith(color: midGrayColor),
                  items: [
                    BottomNavigationBarItem(icon: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Image.asset(homeIcon, height: 22, width: 22, color: controller.tabPosition.value == 0? bottomGrayColor : bottom1GrayColor,),
                    ), label: '홈'),
                    BottomNavigationBarItem(icon: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Image.asset(categoryIcon, height: 22, width: 22, color: controller.tabPosition.value == 1? bottomGrayColor : bottom1GrayColor,),
                    ), label: '카테고리'),
                    BottomNavigationBarItem(icon: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Image.asset(communityIcon, height: 22, width: 22, color: controller.tabPosition.value == 2? bottomGrayColor : bottom1GrayColor,),
                    ), label: '커뮤니티'),
                    BottomNavigationBarItem(icon: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Image.asset(profileIcon, height: 22, width: 22,color: controller.tabPosition.value == 3? bottomGrayColor : bottom1GrayColor,),
                    ), label: '마이페이지'),
                  ],
                  unselectedItemColor: bottom1GrayColor,
                  selectedItemColor: bottomGrayColor,
                  showUnselectedLabels: true,
                  type: BottomNavigationBarType.fixed,
                  onTap: (index){
                    controller.updateTabPosition(index);
                  },
                );
              }),
            ),
          ),
        )
    );
  }
}
