// ignore_for_file: non_constant_identifier_names, unused_local_variable

import 'package:course_management_system/Widgets/Student.dart';
import 'package:course_management_system/Widgets/asssignments.dart';
import 'package:course_management_system/Widgets/classes.dart';
import 'package:course_management_system/Widgets/teacher.dart';
import 'package:velocity_x/velocity_x.dart';

class Mystore extends VxStore {
  Assignment current_assignment = Assignment(heading: "", desc: "");
  // for full app
  List<MyClass> allclasses = [];
  // for Student
  MyClass currentclass = MyClass(
      class_name: "",
      image: "",
      Teacher_name: "",
      class_code: "",
      Assigned: []);
  bool Logged_in_student = false;
  Student student = Student(
      name: "", image: "", Student_id: "", MyAssignments: [], class_ids: []);

  // for teacher
  bool Logged_in_teacher = false;
  Teacher teacher = Teacher(name: "", image: "", Teacher_id: "", class_ids: []);

  Mystore() {
    Assignment current_assignment = Assignment(heading: "", desc: "");
    currentclass = MyClass(
        class_name: "",
        image: "",
        Teacher_name: "",
        class_code: "",
        Assigned: []);

    // for student
    bool Logged_in_student = false;
    student = Student(
        name: "", image: "", Student_id: "", MyAssignments: [], class_ids: []);

    // for teacher
    bool Logged_in_teacher = false;
    teacher = Teacher(name: "", image: "", Teacher_id: "", class_ids: []);
  }
}
