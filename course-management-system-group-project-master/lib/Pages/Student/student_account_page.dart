// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:course_management_system/core.dart/store.dart';
import 'package:course_management_system/routes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class StudentAccountPage extends StatelessWidget {
  const StudentAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _student = (VxState.store as Mystore).student;
    const imageUrl =
        "https://img.freepik.com/free-photo/happy-young-female-student-holding-notebooks-from-courses-smiling-camera-standing-spring-clothes-against-blue-background_1258-70161.jpg?size=626&ext=jpg";
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(title: "Student Account Page".text.make()),
          bottomNavigationBar: Container(
            padding: EdgeInsets.all(8),
            height: 60,
            color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.HomePage);
                    },
                    icon: Icon(
                      Icons.person,
                      size: 45,
                    )),
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.ToDoPage);
                    },
                    icon: Icon(
                      Icons.person,
                      size: 45,
                    )),
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.CurrentClassPage);
                    },
                    icon: Icon(
                      Icons.person,
                      size: 45,
                    )),
              ],
            ),
          ),
          body: Column(
            children: [
              VxBox(
                      child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 70),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        _student.name.text.xl3.make(),
                        (_student.name + "123@gmail.com").text.xl2.make(),
                      ],
                    ),
                  ).w60(context),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                ],
              ))
                  .green100
                  .py16
                  .px16
                  .make()
                  .wFull(context)
                  .py8()
                  .hOneForth(context),
            ],
          )),
    );
  }
}
