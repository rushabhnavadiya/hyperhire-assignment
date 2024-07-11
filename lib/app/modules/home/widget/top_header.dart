import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/constant_colors.dart';
import '../../../constants/constant_images.dart';
import '../../../constants/constant_textstyles.dart';

class TopHeader extends StatelessWidget {
  final String title;
  final String subTitle;
  final bool showNextButton;
  final Function onTap;
  const TopHeader({
    super.key,
    required this.title,
    required this.subTitle,
    required this.onTap,
    this.showNextButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 18.h, bottom: 5.h, left: 16.w, right: 4.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: regular12pxFont().copyWith(color: subHeaderColor),),
                Text(subTitle, style: regular18pxFont().copyWith(color: blackColor,fontWeight: FontWeight.w500,),)
              ],
            ),
          ),
          if(showNextButton)
            InkWell(
              borderRadius: BorderRadius.circular(5.h),
              onTap: (){
                onTap.call();
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 8.h),
                child: Image.asset(nextIcon, width: 8.w, height: 14.h,),
              ),
            )
        ],
      ),
    );
  }
}
