// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:course_management_system/core.dart/store.dart';
import 'package:course_management_system/routes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          VxBox(
            child: Center(child: "Login As Teacher".text.xl4.bold.make().p12()),
          )
              .color(Colors.blue)
              .rounded
              .make()
              .w40(context)
              .h15(context)
              .onTap(() {
            if ((VxState.store as Mystore).Logged_in_teacher) {
              Navigator.pushNamed(context, MyRoutes.TeacherHomePage);
            } else {
              Navigator.pushNamed(context, MyRoutes.TeacherLoginPage);
            }
          }),
          VxBox(
            child: Center(child: "Login As Student".text.bold.xl4.make().p12()),
          )
              .color(Colors.blue)
              .rounded
              .make()
              .w40(context)
              .h15(context)
              .onTap(() {
            if ((VxState.store as Mystore).Logged_in_student) {
              Navigator.pushNamed(context, MyRoutes.HomePage);
            } else {
              Navigator.pushNamed(context, MyRoutes.StudentLoginPage);
            }
          })
        ],
      ),
    );
  }
}
