import 'package:course_management_system/Widgets/classes.dart';
import 'package:course_management_system/core.dart/store.dart';
import 'package:course_management_system/routes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ClassCreatePage extends StatelessWidget {
  const ClassCreatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();
    String classname = "abc";
    String classimage = "abc";
    String teachername = "abc";
    create_class({
      required String name_of_class,
      required String image_of_class,
      required String teachername_of_class,
    }) {
      int length = (VxState.store as Mystore).allclasses.length;
      String temp_class_code = "allclass/${length}";
      (VxState.store as Mystore).teacher.class_ids.add(temp_class_code);
      (VxState.store as Mystore).allclasses.add(MyClass(
          class_name: name_of_class,
          image: image_of_class,
          Teacher_name: teachername_of_class,
          class_code: temp_class_code,
          Assigned: []));
      Navigator.pushNamed(context, MyRoutes.TeacherHomePage);
    }

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
                          return "Class Name Can't be Empty";
                        }
                        classname = value.toString();
                        return null;
                      },
                      decoration: InputDecoration(
                          label: "Class Name".text.make(),
                          hintText: "Enter The Class Name")),
                  TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Class Image Url Can't be Empty";
                        }
                        classimage = value.toString();
                        print(classimage);
                        return null;
                      },
                      decoration: InputDecoration(
                          label: "Class Image".text.make(),
                          hintText: "Enter The Class Image Url")),
                  TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Class Teacher Name Can't be Empty";
                        }
                        teachername = value.toString();
                        return null;
                      },
                      decoration: InputDecoration(
                          label: "Class Teacher".text.make(),
                          hintText: "Enter The Class Teacher Name")),
                ],
              ).p12()),
          "Create Class"
              .text
              .make()
              .p12()
              .box
              .roundedLg
              .color(Colors.lightBlue)
              .make()
              .onTap(() {
            if (formkey.currentState!.validate()) {
              create_class(
                  image_of_class: classimage,
                  name_of_class: classname,
                  teachername_of_class: teachername);
            }
          }),
        ],
      ),
    );
  }
}
