// ignore_for_file: file_names, non_constant_identifier_names

import 'package:velocity_x/velocity_x.dart';

import 'package:course_management_system/Widgets/classes.dart';
import 'package:course_management_system/core.dart/store.dart';

class Teacher {
  String name;
  String image;
  String Teacher_id;
  List<String> class_ids;

  List<MyClass> get myclasses => (VxState.store as Mystore)
      .teacher
      .class_ids
      .map((id) => MyClass.getbyid(id))
      .toList();
  Teacher({
    required this.name,
    required this.image,
    required this.Teacher_id,
    required this.class_ids,
  });
}
