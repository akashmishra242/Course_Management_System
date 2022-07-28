// ignore_for_file: prefer_const_constructors

import 'package:course_management_system/Widgets/classes.dart';
import 'package:course_management_system/core.dart/store.dart';
import 'package:course_management_system/routes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CurrentClassPage extends StatefulWidget {
  const CurrentClassPage({Key? key}) : super(key: key);

  @override
  State<CurrentClassPage> createState() => _CurrentClassPageState();
}

class _CurrentClassPageState extends State<CurrentClassPage> {
  @override
  Widget build(BuildContext context) {
    MyClass currentclass = (VxState.store as Mystore).currentclass;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.CreateAssignmentPage);
              setState(() {});
            },
            icon: Icon(
              Icons.add,
              color: Colors.black,
            ),
          ).px64(),
        ],
        title: "class".text.make(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image.network(currentclass.image).wFull(context).h32(context),
          "Assignments :".text.align(TextAlign.start).bold.xl2.make().p12(),
          ListView.builder(
              shrinkWrap: true,
              itemCount: currentclass.Assigned.length,
              itemBuilder: (context, index) {
                return VxBox(
                    child: Row(
                  children: [
                    currentclass.Assigned[index].heading.text.make().p20(),
                  ],
                )).color(Colors.green).rounded.make().onTap(() {
                  (VxState.store as Mystore).current_assignment =
                      currentclass.Assigned[index];
                  Navigator.pushNamed(context, MyRoutes.CurrentAssignmentPage);
                }).p20();
              }).expand(),
        ],
      ),
    );
  }
}
