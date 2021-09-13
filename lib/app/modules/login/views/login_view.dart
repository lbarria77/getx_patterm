import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_patterm_demo/app/modules/login/controllers/login_controller.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(      
      builder: (_) {
        return Scaffold(
            appBar: AppBar(
              title: Text('LoginView'),
              centerTitle: true,
            ),
            body: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Container(
                height: double.infinity,
            width: double.infinity,
            padding: EdgeInsets.all(20.0),
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: _.onUserNameChange,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(labelText: 'Username:'),
                ),
                TextField(
                  onChanged: _.onPasswordChange,
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Password'),
                ),
                TextButton(
                    child: Text('Enter', style: TextStyle(fontSize: 16.0, color: Colors.white),),
                    onPressed: _.submit,
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      // foregroundColor: MaterialStateProperty.all(Colors.white)
                    )),
              ],
            ),
          ),
        ));
  });
}
}