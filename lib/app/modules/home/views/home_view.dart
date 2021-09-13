import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_patterm_demo/app/modules/home/controllers/home_controller.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(      
      builder: (_) => Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                icon: Icon(Icons.exit_to_app),
                onPressed: _.logOut,
              )
            ],
            title: Text('HomeView'),
            centerTitle: true,
          ),
          body: Center(
            child: Text(
              'HomeView is working',
              style: TextStyle(fontSize: 20),
        ),
      ),
    ));
  }
}

