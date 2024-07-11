import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constants/constant_textstyles.dart';
import '../controllers/community_controller.dart';

class CommunityView extends GetView<CommunityController> {
  const CommunityView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'CommunityView is working',
          style: regular20pxFont(),
        ),
      ),
    );
  }
}
