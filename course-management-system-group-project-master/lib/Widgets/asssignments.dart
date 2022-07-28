// ignore_for_file: non_constant_identifier_names

import 'package:course_management_system/Widgets/classes.dart';
import 'package:course_management_system/core.dart/store.dart';
import 'package:velocity_x/velocity_x.dart';

class Assignment {
  final String heading;
  final String desc;
  bool done = false;
  Assignment({required this.heading, required this.desc});
}
