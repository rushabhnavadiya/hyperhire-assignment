import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constants/constant_textstyles.dart';
import '../controllers/category_controller.dart';

class CategoryView extends GetView<CategoryController> {
  const CategoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'CategoryView is working',
          style: regular20pxFont(),
        ),
      ),
    );
  }
}
