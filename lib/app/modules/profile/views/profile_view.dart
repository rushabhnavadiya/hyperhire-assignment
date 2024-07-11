import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constants/constant_textstyles.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'ProfileView is working',
          style: regular20pxFont(),
        ),
      ),
    );
  }
}
