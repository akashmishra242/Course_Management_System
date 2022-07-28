// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:course_management_system/Widgets/Student.dart';
import 'package:course_management_system/core.dart/store.dart';
import 'package:course_management_system/routes.dart';
import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import 'package:velocity_x/velocity_x.dart';

class StudentHomePage extends StatefulWidget {
  const StudentHomePage({Key? key}) : super(key: key);

  @override
  State<StudentHomePage> createState() => _StudentHomePageState();
}

class _StudentHomePageState extends State<StudentHomePage> {
  @override
  Widget build(BuildContext context) {
    Student student = (VxState.store as Mystore).student;
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("Home Page"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.ClassAddPage);
              setState(() {});
            },
            icon: Icon(
              Icons.add,
              color: Colors.black,
            ),
          ).px64(),
        ],
      ),
      body: StaggeredGridView.countBuilder(
          itemCount: student.MyClasses.length,
          crossAxisCount: 2,
          itemBuilder: (context, index) {
            return VxBox(
                    child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Image.network(student.MyClasses[index].image)
                    .box
                    .rounded
                    .p8
                    .color(Colors.black)
                    .make(),
                student.MyClasses[index].class_name.text.underline.bold
                    .make()
                    .p8(),
                ("Teacher - " + student.MyClasses[index].Teacher_name)
                    .text
                    .underline
                    .capitalize
                    .bold
                    .color(Colors.red)
                    .make()
                    .p8(),
              ],
            ))
                .color(Colors.green)
                .rounded
                .border(color: Colors.lightBlue, width: 5)
                .make()
                .onTap(() {
                  (VxState.store as Mystore).currentclass =
                      student.MyClasses[index];
                  Navigator.pushNamed(context, MyRoutes.CurrentClassPage);
                })
                .p20()
                .expand();
          },
          staggeredTileBuilder: (int index) {
            return StaggeredTile.count(1, 1.2);
          }),
    );
  }
}
