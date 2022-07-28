import 'package:course_management_system/Widgets/classes.dart';
import 'package:course_management_system/core.dart/store.dart';
import 'package:course_management_system/routes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ClassAddPage extends StatelessWidget {
  const ClassAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();
    String classcode = "";
    return Material(
      child: Column(
        children: [
          Form(
              key: formkey,
              child: Column(
                children: [
                  TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Class Code Can't be Empty";
                        }
                        classcode = value.toString();
                        return null;
                      },
                      decoration: InputDecoration(
                          label: "Class Code".text.make(),
                          hintText: "Enter The Class Code")),
                ],
              ).p12()),
          "Join Class"
              .text
              .make()
              .p12()
              .box
              .roundedLg
              .color(Colors.lightBlue)
              .make()
              .onTap(() {
            if (formkey.currentState!.validate()) {
              if (!(VxState.store as Mystore)
                  .student
                  .class_ids
                  .contains(classcode)) {
                (VxState.store as Mystore).student.class_ids.add(classcode);
              }
              Navigator.pushNamed(context, MyRoutes.HomePage);
            }
          }),
        ],
      ),
    );
  }
}
