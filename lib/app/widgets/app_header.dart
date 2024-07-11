import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constants/constant_colors.dart';
import '../constants/constant_images.dart';
import '../constants/constant_textstyles.dart';

class AppHeader extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function? onTap;
  const AppHeader({
    super.key,
    required this.title,
    required this.subtitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: whiteColor,
      child: Column(
        children: [
          SizedBox(
            height: 54.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w,),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 0,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(50.h),
                        onTap: (){
                          if(onTap != null) {
                            onTap!.call();
                          }else{
                            Get.back();
                          }
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                          child: Image.asset(backIcon, width: 21.w, height: 12.h,),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.w,),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("랭킹 1위", maxLines: 1,style: regular10pxFont().copyWith(color: demiGrayColor, fontWeight: FontWeight.w400,),),
                          Text("베스트 리뷰어", maxLines: 1,style: regular16pxFont().copyWith(color: subtitleColor, fontWeight: FontWeight.w500,),)
                        ],
                      ),
                    ),
                  )
                ],

              ),
            ),
          ),
          Divider(height: 1.h, color: lightGrayDividerColor,)
        ],
      ),
    );
  }
}
