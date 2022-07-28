import 'package:course_management_system/Widgets/asssignments.dart';
import 'package:course_management_system/core.dart/store.dart';
import 'package:course_management_system/routes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AssignmentCreatePage extends StatelessWidget {
  const AssignmentCreatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();
    String assignment_heading = "";
    String assignment_desc = "";
    create_Assignment({
      required String heading,
      required String desc,
    }) {
      int index = (VxState.store as Mystore)
          .allclasses
          .indexOf((VxState.store as Mystore).currentclass);
      (VxState.store as Mystore)
          .allclasses
          .elementAt(index)
          .Assigned
          .add(Assignment(heading: heading, desc: desc));
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
                          return "Assignment Heading Can't be Empty";
                        }
                        assignment_heading = value.toString();
                        return null;
                      },
                      decoration: InputDecoration(
                          label: "Assignment Heading".text.make(),
                          hintText: "Enter The Assignment Name")),
                  TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Assignment description Can't be Empty";
                        }
                        assignment_desc = value.toString();
                        return null;
                      },
                      decoration: InputDecoration(
                          label: "Assignment description".text.make(),
                          hintText: "Enter The Assignment Description")),
                ],
              ).p12()),
          "Create Assignment"
              .text
              .make()
              .p12()
              .box
              .roundedLg
              .color(Colors.lightBlue)
              .make()
              .onTap(() {
            if (formkey.currentState!.validate()) {
              create_Assignment(
                  heading: assignment_heading, desc: assignment_desc);
            }
          }),
        ],
      ),
    );
  }
}
