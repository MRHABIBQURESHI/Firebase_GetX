import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/Home/home_controller.dart';
import 'package:getxproject/Profile/Profile_view.dart';

class home_view extends StatefulWidget {
  const home_view({super.key});

  @override
  State<home_view> createState() => _home_viewState();
}

class _home_viewState extends State<home_view> {
  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<HomeController>(
              builder: (controller){
              return Text(controller.count.toString());
            },
            ),
            SizedBox(height: 25,),
            ElevatedButton(onPressed: (){
              Get.to(Profile_View());
            }, child: Text("Got to prfole view"))
        
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){controller.increment();},
      child: const Icon(Icons.add),
      
      
      ),
    );
  }
}
