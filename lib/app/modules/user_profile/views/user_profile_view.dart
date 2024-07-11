import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:hyperhire_assignment/app/constants/constant_colors.dart';
import 'package:hyperhire_assignment/app/constants/constant_images.dart';

import '../../../constants/constant_textstyles.dart';
import '../../../widgets/app_header.dart';
import '../../../widgets/star_rating.dart';
import '../controllers/user_profile_controller.dart';

class UserProfileView extends GetView<UserProfileController> {
  const UserProfileView({Key? key}) : super(key: key);
  static const tags = [
    "가격 저렴해요",
    "CPU온도 고온",
    "서멀작업 가능해요",
    "게임 잘 돌아가요",
    "발열이 적어요",
  ];
  static const images = [
    productDetail2Img,
    productDetail3Img,
    productDetail4Img,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            const AppHeader(
                title: '베스트 리뷰어',
                subtitle: '랭킹 1위'
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 24.h, bottom: 10.h),
                      child: Image.asset(userProfile1Img, width: 120.h, height: 120.h,),
                    ),
                    Text("Name01", maxLines: 1,style: regular20pxFont().copyWith(color: blackColor, fontWeight: FontWeight.w500,),),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(crownIcon, width: 19.w,),
                        SizedBox(width: 3.w,),
                        Text("골드", softWrap: true, style: regular14pxFont().copyWith(color: yellowColor,fontWeight: FontWeight.w500,),),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                      margin: EdgeInsets.only(top: 12.h, left: 16.h, right: 16.h, bottom: 24.h),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(6),
                          ),
                          color: tagBGColor),
                      child: Text("조립컴 업체를 운영하며 리뷰를 작성합니다.", style: regular14pxFont().copyWith(color: demiGrayColor),),
                    ),
                    Container(
                      height: 12.h,
                      color: disableGrayColor,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 13.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("작성한 리뷰", softWrap: true, style: regular16pxFont().copyWith(color: blackColor,fontWeight: FontWeight.w600,),),

                          SizedBox(width: 3.w,),
                          Text("총 35개",softWrap: true, style: regular12pxFont().copyWith(color: subHeaderColor,),),
                          const Spacer(),
                          Container(
                            margin: EdgeInsets.only(left: 16.w,),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1.w,
                                  color: demiGrayColor
                              ),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(50.h)
                              ),
                            ),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(50.h)
                                ),
                                onTap: (){},
                                child: Padding(
                                  padding: EdgeInsets.only(left: 8.w,right: 2.w),
                                  child: Row(
                                    children: [
                                      Text("최신순",style: regular12pxFont().copyWith(color: demiGrayColor,fontWeight: FontWeight.w400,),),
                                      SizedBox(width: 16.w,),
                                      const Icon(Icons.arrow_drop_down_rounded, color: demiGrayColor,),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    Divider(color: tagBGColor, height: 1.h, thickness: 1.h,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 13.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                            height: 104.w,
                            child: Center(child: Image.asset(productDetail1Img, height: 90.w,width: 90.w,)),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text.rich(
                                  TextSpan(
                                      text: "AMD 라이젠 5 ",
                                      children: <InlineSpan>[
                                        TextSpan(
                                          text: "5600X 버미어\n정품 멀티팩",
                                          style: regular14pxFont().copyWith(color: blackColor,fontWeight: FontWeight.w500,),
                                        )
                                      ],
                                      style: regular14pxFont().copyWith(color: blackColor,fontWeight: FontWeight.w700,)
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(height: 5.h,),

                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 2.h),
                                      child: StarRating(
                                        rating: 4,
                                        iconSize: 20.h,
                                        gap: 0.5.w,
                                      ),
                                    ),
                                    SizedBox(width: 5.w,),
                                    Text("4.07", softWrap: true, style: regular18pxFont().copyWith(color: blackColor,fontWeight: FontWeight.w500,),),
                                  ],
                                ),
                                // ...product.details.map((String text) {
                                //   return Row(
                                //     crossAxisAlignment: CrossAxisAlignment.center,
                                //     mainAxisAlignment: MainAxisAlignment.center,
                                //     children: [
                                //       SizedBox(width: 5.w,),
                                //       Text("●", style: regular8pxFont().copyWith(color: subtitleColor, fontSize: 6),),
                                //       SizedBox(width: 8.w,),
                                //       Expanded(
                                //         child: Text(text,
                                //           maxLines: 1,
                                //           overflow: TextOverflow.ellipsis, style: regular12pxFont().copyWith(color: subtitleColor),),
                                //       ),
                                //     ],
                                //   );
                                // }).toList(),
                                // SizedBox(height: 5.h,),
                                // Row(
                                //   mainAxisSize: MainAxisSize.min,
                                //   children: [
                                //     Image.asset(starIcon, width: 10.h, height: 10.h,),
                                //     SizedBox(width: 2.w,),
                                //     Text(product.rating.toString(), style: regular10pxFont().copyWith(color: yellowColor,fontWeight: FontWeight.w700,),),
                                //     SizedBox(width: 2.w,),
                                //     Text("(${product.noOfRate})", style: regular10pxFont().copyWith(color: lightGrayColor,fontWeight: FontWeight.w700,),)
                                //   ],
                                // ),
                                // SizedBox(height: 5.h,),
                                //
                                // SingleChildScrollView(
                                //   scrollDirection: Axis.horizontal,
                                //   physics: const BouncingScrollPhysics(),
                                //   child: Row(
                                //     crossAxisAlignment: CrossAxisAlignment.center,
                                //     mainAxisAlignment: MainAxisAlignment.center,
                                //     children: product.tags.map((String tag) {
                                //       return Container(
                                //         padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 6.w),
                                //         margin: EdgeInsets.only(right: 10.w),
                                //         decoration: const BoxDecoration(
                                //             borderRadius: BorderRadius.all(
                                //               Radius.circular(6),
                                //             ),
                                //             color: tagBGColor),
                                //         child: Text(tag, style: regular12pxFont().copyWith(color: demiGrayColor,fontSize: 11),),
                                //       );
                                //     }).toList(),
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Divider(color: tagBGColor, height: 1.h, thickness: 1.h,),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(userProfile1Img, height: 34.h, width: 34.h,),
                          SizedBox(width: 6.w,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Text("Name01",softWrap: true, style: regular14pxFont().copyWith(color: blackColor,fontWeight: FontWeight.w400,),),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 2.h),
                                    child: StarRating(
                                      rating: 4,
                                      iconSize: 10.h,
                                      gap: 1.w,
                                    ),
                                  ),
                                  SizedBox(width: 2.w,),
                                  Text("2022.12.09", softWrap: true, style: regular10pxFont().copyWith(color: demiGrayColor,fontWeight: FontWeight.w500,),),
                                ],
                              ),
                            ],
                          ),
                          const Spacer(),
                          InkWell(
                            borderRadius: BorderRadius.circular(50.h),
                            onTap: (){
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                              child: Image.asset(saveIcon, width: 14.w),
                            ),
                          )
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      padding: EdgeInsets.only(left: 16.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: tags.map((String tag) {
                          return Container(
                            padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 6.w),
                            margin: EdgeInsets.only(right: 20.w),
                            child: Text("“$tag”", style: regular10pxFont().copyWith(color: listGrayColor,fontWeight: FontWeight.w700),),
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(height: 10.h,),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 12.w,),
                          Padding(
                            padding: EdgeInsets.only(top: 3.h),
                            child: Image.asset(powerIcon, width: 9.w, color: darkBlueColor,),
                          ),
                          SizedBox(width: 15.w,),
                          Expanded(
                            child: Text("멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.",
                              style: regular14pxFont().copyWith(color: subHeaderColor,),),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5.h,),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 12.w,),
                          Padding(
                            padding: EdgeInsets.only(top: 3.h),
                            child: Image.asset(powerIcon, width: 9.w, ),
                          ),
                          SizedBox(width: 15.w,),
                          Expanded(
                            child: Text("3600에서 바꾸니 체감이 살짝 되네요. 버라이어티한 느낌 까지는 아닙니다.",
                              style: regular14pxFont().copyWith(color: subHeaderColor,),),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h,),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: SizedBox(
                        height: 70.h,
                        child: ListView(
                          padding: EdgeInsets.only(left: 37.w),
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          children: images.map((String image) {
                            return Container(
                              margin: EdgeInsets.only(right: 10.w),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(2.h),
                                  child: Image.asset(image, width: 70.h, height: 70.h, fit: BoxFit.cover,)),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Divider(color: tagBGColor, height: 1.h, thickness: 1.h,),
                    ),
                    SizedBox(height: 5.h,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 2.h),
                            child: Image.asset(commentIcon, height: 12.h, width: 12.h,),
                          ),
                          SizedBox(width: 5.w,),
                          Expanded(
                            child: TextFormField(
                              controller: controller.commentController,
                              validator: (value) {
                                if (value!.isEmpty) return "댓글 달기..";
                                return null;
                              },
                              decoration: InputDecoration(
                                  hintText: "댓글 달기..",
                                  helperStyle: regular10pxFont().copyWith(color: subHeaderColor),
                                  border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 12.h,
                      color: disableGrayColor,
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

