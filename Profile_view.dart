import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/Home/home_controller.dart';

class Profile_View extends StatelessWidget {
  const Profile_View({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Scaffold(
      body: Center(
        child: Text(controller.count.toString()),
      ),
    );
  }
}
