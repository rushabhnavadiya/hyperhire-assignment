import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hyperhire_assignment/app/modules/home/model/product_model.dart';

import '../../../constants/constant_colors.dart';
import '../../../constants/constant_images.dart';
import '../../../constants/constant_textstyles.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w),

      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(5.h),
          onTap: (){

          },
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 8.w, right: 12.w),
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1.w,
                        color: borderColor
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(4.h)
                    ),
                  ),
                  width: 104.w,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(product.image, height: 94.h,width: 80.w,),

                      Positioned(
                          top: 5.h,
                          left: 5.w,
                          child: Image.asset(product.rank == 1
                              ? firstRankCrownIcon
                              : product.rank == 2
                              ? secondRankCrownIcon
                              : thirdRankCrownIcon,
                            height: 16.h,
                            width: 20.w,)),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                            text: product.title,
                            children: <InlineSpan>[
                              TextSpan(
                                text: product.subtitle,
                                style: regular14pxFont().copyWith(color: blackColor,fontWeight: FontWeight.w500,),
                              )
                            ],
                            style: regular14pxFont().copyWith(color: blackColor,fontWeight: FontWeight.w700,)
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 5.h,),

                      ...product.details.map((String text) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width: 6.w,),
                            Text("●", style: regular8pxFont().copyWith(color: subtitleColor, fontSize: 4),),
                            SizedBox(width: 8.w,),
                            Expanded(
                              child: Text(text,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis, style: regular12pxFont().copyWith(color: subtitleColor),),
                            ),
                          ],
                        );
                      }).toList(),
                      SizedBox(height: 5.h,),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(starIcon, width: 10.h, height: 10.h,),
                          SizedBox(width: 2.w,),
                          Text(product.rating.toString(), style: regular10pxFont().copyWith(color: yellowColor,fontWeight: FontWeight.w700,),),
                          SizedBox(width: 2.w,),
                          Text("(${product.noOfRate})", style: regular10pxFont().copyWith(color: lightGrayColor,fontWeight: FontWeight.w700,),)
                        ],
                      ),
                      SizedBox(height: 5.h,),

                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: product.tags.map((String tag) {
                            return Container(
                              padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 6.w),
                              margin: EdgeInsets.only(right: 10.w),
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(6),
                                  ),
                                  color: tagBGColor),
                              child: Text(tag, style: regular12pxFont().copyWith(color: demiGrayColor,fontSize: 11),),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 8.w,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
