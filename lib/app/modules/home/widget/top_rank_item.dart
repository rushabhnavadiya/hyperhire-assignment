import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hyperhire_assignment/app/modules/home/model/product_model.dart';

import '../../../constants/constant_colors.dart';
import '../../../constants/constant_images.dart';
import '../../../constants/constant_textstyles.dart';
import '../../../routes/app_pages.dart';
import '../model/top_rank_model.dart';

class TopRankItem extends StatelessWidget {
  const TopRankItem({
    super.key,
    required this.topRankUser,
    this.showCrown = false,
  });

  final TopRankModel topRankUser;
  final bool showCrown;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 4.h),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(5.h),
          onTap: (){
            FocusManager.instance.primaryFocus?.unfocus();
            Get.toNamed(Routes.USER_PROFILE);
          },
          child: Padding(
            padding: EdgeInsets.only(left: 5.w, right: 5.w,bottom: 4.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 14.h),
                      child: Image.asset(topRankUser.profilePic, width: 65.h, height: 65.h,),
                    ),
                    if(showCrown)
                      Positioned(
                        left: 5.w,
                        top: 5.h,
                        child: Image.asset(crownIcon, height: 13.h, width: 16.w,))
                  ],
                ),
                SizedBox(height: 6.h,),
                Text(topRankUser.name, maxLines: 1,style: regular14pxFont().copyWith(color: subHeaderColor, fontWeight: FontWeight.w400,),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
