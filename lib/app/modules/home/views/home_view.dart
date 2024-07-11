import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
import 'package:hyperhire_assignment/app/constants/constant_colors.dart';
import '../../../constants/constant_images.dart';
import '../../../constants/constant_textstyles.dart';
import '../../../constants/constants.dart';
import '../controllers/home_controller.dart';
import '../widget/product_item.dart';
import '../widget/top_header.dart';
import '../widget/top_rank_item.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGO', style: regular24pxFont().copyWith(fontWeight: FontWeight.w500, color: blueColor,)),
        centerTitle: false,
        backgroundColor: whiteColor,
        elevation: 1,
      ),
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 16.w),
              child: SizedBox(
                height: 36.h,
                child: TextFormField(
                  controller: controller.searchController,
                  validator: (value) {
                    if (value!.isEmpty) return "검색어를 입력하세요";
                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: "검색어를 입력하세요",
                      helperStyle: regular12pxFont().copyWith(color: demiGrayColor),
                      suffixIcon: Image.asset(searchIcon),
                      contentPadding: const EdgeInsets.symmetric(vertical: 2,horizontal: 10),
                      border: GradientOutlineInputBorder(
                          width: 2.w,
                          borderRadius: BorderRadius.circular(10),
                          // gapPadding: 2,
                          gradient: const LinearGradient(
                              colors: [gradient2Color, gradient1Color]))),
                ),
              ),
            ),
            Stack(
              children: [
                CarouselSlider.builder(
                  itemCount: Constants.banners.length,
                  itemBuilder: (context, index, index1) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        image: DecorationImage(
                          image: AssetImage(Constants.banners[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                  options: CarouselOptions(
                    height: 221.h,
                    viewportFraction: 1,
                    autoPlayCurve: Curves.easeInOut,
                    autoPlayInterval: const Duration(seconds: 7),
                    autoPlay: true,
                    onPageChanged: (val, _) {
                      controller.updateBannerPosition(val);
                    }
                  ),
                ),
                Obx(() {
                    return Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: Constants.banners.map((String slide) {
                          return Container(
                            width: Constants.banners[controller.bannerPosition.value] == slide
                                ? 9.h
                                : 4.h,
                            height: 4.h,
                            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.5.w),
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                color: Constants.banners[controller.bannerPosition.value] == slide
                                    ? whiteColor
                                    : whiteColor.withOpacity(0.5)),
                          );
                        }).toList(),
                      ),
                    );
                  }),
              ],
            ),

            SizedBox(height: 8.h,),
            TopHeader(
              title: '제일 핫한 리뷰를 만나보세요',
              subTitle: '리뷰️  랭킹⭐ top 3',
              showNextButton: true,
              onTap: (){},
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.only(bottom: 15.h),
              itemCount: Constants().products.length,
                itemBuilder: (context, index){
                  return ProductItem(product: Constants().products[index]);
                }),
            Container(
              height: 15.h,
              color: disableGrayColor,
            ),

            TopHeader(
              title: '골드 계급 사용자들이예요',
              subTitle: '베스트 리뷰어 🏆 Top10',
              showNextButton: false,
              onTap: (){},
            ),
            SizedBox(
              height: 110.h,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 11.w),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: Constants().topRanks.length,
                  itemBuilder: (context, index){
                    return TopRankItem(
                      topRankUser: Constants().topRanks[index],
                      showCrown: index == 0 ? true : false,
                    );
                  }),
            ),
            SizedBox(height: 15.h,),
            Container(
              color: disableGrayColor,
              padding: EdgeInsets.only(top: 20.h, bottom: 15.h),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Text("LOGO Inc.", style: regular14pxFont().copyWith(color: demiGrayColor,fontWeight: FontWeight.w500,),),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
                    child: Row(
                      children: [
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                              borderRadius: BorderRadius.circular(5.h),
                              onTap:(){},
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                                child: Text("회사 소개", style: regular14pxFont().copyWith(color: demiGrayColor,fontSize: 13),),
                              )),
                        ),
                        Expanded(child: Center(child: Text("|", style: regular10pxFont().copyWith(color: lightGrayDividerColor),))),

                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                              borderRadius: BorderRadius.circular(5.h),
                              onTap:(){},
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.h,horizontal: 4.w),
                                child: Text("인재 채용", style: regular14pxFont().copyWith(color: demiGrayColor,fontSize: 13),),
                              )),
                        ),
                        Expanded(child: Center(child: Text("|", style: regular10pxFont().copyWith(color: lightGrayDividerColor),))),

                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                              borderRadius: BorderRadius.circular(5.h),
                              onTap:(){},
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.h,horizontal: 4.w),
                                child: Text("기술 블로그", style: regular14pxFont().copyWith(color: demiGrayColor,fontSize: 13),),
                              )),
                        ),
                        Expanded(child: Center(child: Text("|", style: regular10pxFont().copyWith(color: lightGrayDividerColor),))),
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                              borderRadius: BorderRadius.circular(5.h),
                              onTap:(){},
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.h,horizontal: 4.w),
                                child: Text("리뷰 저작권", style: regular14pxFont().copyWith(color: demiGrayColor,fontSize: 13),),
                              )),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 5.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 2.h),
                          child: Image.asset(sendIcon, height: 13.h, width: 13.w,),
                        ),
                        SizedBox(width: 3.w,),
                        Text("review@logo.com",softWrap: true, style: regular14pxFont().copyWith(color: demiGrayColor,fontWeight: FontWeight.w400,),),
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
                              onTap: (){

                              },
                              child: Padding(
                                padding: EdgeInsets.only(left: 8.w,right: 2.w),
                                child: Row(
                                  children: [
                                    Text("KOR",style: regular14pxFont().copyWith(color: demiGrayColor,fontWeight: FontWeight.w400,),),
                                    const SizedBox(width: 23,),
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
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 7.h),
                    child: Divider(color: lightGrayDividerColor, height: 1.h,),
                  ),
                  SizedBox(height: 5.h,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Text("@2022-2022 LOGO Lab, Inc. (주)아무개  서울시 강남구", style: regular10pxFont().copyWith(color: demiGrayColor,),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

