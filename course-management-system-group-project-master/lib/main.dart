// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:course_management_system/Pages/Student/login_page_student.dart';
import 'package:course_management_system/Pages/Student/student_account_page.dart';
import 'package:course_management_system/Pages/Student/student_home_page.dart';
import 'package:course_management_system/Pages/Teacher/assignment_create_page.dart';
import 'package:course_management_system/Pages/Teacher/class_create_page.dart';
import 'package:course_management_system/Pages/Teacher/login_page_teacher.dart';
import 'package:course_management_system/Pages/Teacher/teacher_account_page.dart';
import 'package:course_management_system/Pages/Teacher/teacher_home_page.dart';
import 'package:course_management_system/Pages/account_page.dart';
import 'package:course_management_system/Pages/current_assignment_page.dart';
import 'package:course_management_system/Pages/current_class_page.dart';
import 'package:course_management_system/Pages/login_page.dart';
import 'package:course_management_system/Pages/To-Do/to_do_page.dart';
import 'package:course_management_system/Routes.dart';
import 'package:course_management_system/core.dart/store.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'Pages/Student/add_class_page.dart';

void main() {
  runApp(VxState(store: Mystore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: MyRoutes.StudentAccountPage,
      initialRoute: MyRoutes.LoginPage,
      routes: {
        MyRoutes.HomePage: (context) => StudentHomePage(),
        MyRoutes.AccountPage: (context) => AccountPage(),
        MyRoutes.ToDoPage: (context) => ToDoPage(),
        MyRoutes.LoginPage: (context) => LoginPage(),
        MyRoutes.StudentLoginPage: (context) => StudentLoginPage(),
        MyRoutes.StudentAccountPage: (context) => StudentAccountPage(),
        MyRoutes.CurrentClassPage: (context) => CurrentClassPage(),
        MyRoutes.CurrentAssignmentPage: (context) => CurrentAssignmentPage(),
        MyRoutes.TeacherAccountPage: (context) => TeacherAccountPage(),
        MyRoutes.TeacherHomePage: (context) => TeacherHomePage(),
        MyRoutes.TeacherLoginPage: (context) => TeacherLoginPage(),
        MyRoutes.CreateClassPage: (context) => ClassCreatePage(),
        MyRoutes.ClassAddPage: (context) => ClassAddPage(),
        MyRoutes.CreateAssignmentPage: (context) => AssignmentCreatePage(),
      },
    );
  }
}
