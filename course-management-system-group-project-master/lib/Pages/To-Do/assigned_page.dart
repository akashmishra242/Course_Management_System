import 'package:course_management_system/Widgets/asssignments.dart';
import 'package:course_management_system/core.dart/store.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../routes.dart';

class AssignedTODo extends StatelessWidget {
  const AssignedTODo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Assignment> _allAssignments =
        (VxState.store as Mystore).student.MyAssignments;
    Assignment a1 = Assignment(heading: "a1", desc: "desc1");
    Assignment a2 = Assignment(heading: "a2", desc: "desc2");
    Assignment a3 = Assignment(heading: "a3", desc: "desc3");
    _allAssignments.add(a1);
    _allAssignments.add(a2);
    _allAssignments.add(a3);
    for (var i = 0; i < _allAssignments.length; i++) {
      if (_allAssignments[i].done == true) {
        _allAssignments.remove(_allAssignments[i]);
      }
    }
    return Container(
      child: Column(
        children: [
          _allAssignments.isEmpty
              ? "Assigned task will appear here.".text.bold.make()
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
