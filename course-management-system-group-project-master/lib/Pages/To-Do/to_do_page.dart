// ignore_for_file: prefer_const_constructors,, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'assigned_page.dart';
import 'done_page.dart';
import 'missing_page.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({Key? key}) : super(key: key);

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  String profileicon =
      "https://cdn4.iconfinder.com/data/icons/eon-ecommerce-i-1/32/user_profile_man-512.png";
  String homeicon =
      "https://cdn0.iconfinder.com/data/icons/aami-web-internet/64/simple-01-256.png";
  String progressicon =
      "https://cdn3.iconfinder.com/data/icons/business-212/48/trend-256.png";
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "To-do".text.make(),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
        ],
        bottom: TabBar(
          controller: _controller,
          tabs: const [
            //Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: ("Assigned")),
            Tab(text: ("Missing")),
            Tab(text: ("Done")),
          ],
        ),
      ),
      body: TabBarView(controller: _controller, children: const [
        AssignedTODo(),
        MissingToDo(),
        DoneToDo(),
      ]),
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          selectedItemColor: Colors.red,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon: Image(
                image: NetworkImage(homeicon),
                height: 25,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Image(
                  image: NetworkImage(progressicon),
                  height: 25,
                ),
                label: "Progress"),
            BottomNavigationBarItem(
                icon: Image(
                  image: NetworkImage(profileicon),
                  height: 25,
                ),
                label: "Profile"),
          ]),
    );
  }
}
