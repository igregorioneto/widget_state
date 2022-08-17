import 'package:flutter/material.dart';
import 'package:widget_state/Widgets/ParentWidget/parent_widget.dart';

class MyAppParentWidget extends StatelessWidget {
  const MyAppParentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: ParentWidget(),
        ),
      ),
    );
  }
}
