// ignore_for_file: non_constant_identifier_names

import 'package:course_management_system/Widgets/asssignments.dart';
import 'package:course_management_system/core.dart/store.dart';
import 'package:velocity_x/velocity_x.dart';

class MyClass {
  final String class_name;
  final String image;
  final String Teacher_name;
  final String class_code;
  List<Assignment> Assigned = [];

  MyClass({
    required this.class_name,
    required this.image,
    required this.Teacher_name,
    required this.class_code,
    required this.Assigned,
  });

  static MyClass getbyid(String id) {
    return (VxState.store as Mystore)
        .allclasses
        .firstWhere((element) => element.class_code.compareTo(id) == 0);
  }
}
