import 'package:course_management_system/Widgets/asssignments.dart';
import 'package:course_management_system/core.dart/store.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../routes.dart';

class DoneToDo extends StatelessWidget {
  const DoneToDo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Assignment> _allAssignments =
        (VxState.store as Mystore).student.MyAssignments;
    for (var i = 0; i < _allAssignments.length; i++) {
      if (_allAssignments[i].done == false) {
        _allAssignments.remove(_allAssignments[i]);
      }
    }
    return Container(
      child: Column(
        children: [
          _allAssignments.isEmpty
              ? "Done task will appear here.".text.bold.make()
              : ListView.builder(
                  shrinkWrap: true,
                  itemCount: _allAssignments.length,
                  itemBuilder: (context, index) {
                    return VxBox(
                        child: Row(
                      children: [
                        _allAssignments[index].heading.text.make().p20(),
                        _allAssignments[index].desc.text.make().p20(),
                      ],
                    )).color(Colors.green).rounded.make().onTap(() {
                      Navigator.pushNamed(
                          context, MyRoutes.CurrentAssignmentPage);
                    }).p20();
                  }).expand(),
        ],
      ),
    );
  }
}
