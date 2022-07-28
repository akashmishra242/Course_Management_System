import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MissingToDo extends StatelessWidget {
  const MissingToDo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // MyClass currentclass = (VxState.store as Mystore).currentclass;
    return Container(
      child: Column(
        children: [
          "Missing task will appear here.".text.bold.make(),
        ],
      ),
    );
  }
}
