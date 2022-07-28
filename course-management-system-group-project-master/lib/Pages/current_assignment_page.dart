// ignore_for_file: prefer_const_constructors

import 'package:course_management_system/core.dart/store.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CurrentAssignmentPage extends StatelessWidget {
  const CurrentAssignmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ("heading - " + (VxState.store as Mystore).current_assignment.heading)
            .text
            .bold
            .underline
            .make()
            .p20(),
        (VxState.store as Mystore).current_assignment.desc.text.make().p20(),
      ]),
    );
  }
}
