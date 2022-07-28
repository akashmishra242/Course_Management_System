// ignore_for_file: file_names, non_constant_identifier_names

import 'package:course_management_system/Widgets/asssignments.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:course_management_system/Widgets/classes.dart';
import 'package:course_management_system/core.dart/store.dart';

class Student {
  String name;
  String image;
  String Student_id;
  List<String> class_ids;
  List<Assignment> MyAssignments = [];
  List<MyClass> get MyClasses => (VxState.store as Mystore)
      .student
      .class_ids
      .map((id) => MyClass.getbyid(id))
      .toList();
  Student({
    //required List Assigned,
    required this.name,
    required this.image,
    required this.Student_id,
    required this.class_ids,
    required this.MyAssignments,
  });
}
