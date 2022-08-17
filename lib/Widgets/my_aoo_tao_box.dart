import 'package:flutter/material.dart';
import 'package:widget_state/Widgets/tap_box.dart';

class MyAppTapBox extends StatelessWidget {
  const MyAppTapBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Tap Box',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Tap Box'),
          ),
          body: const Center(
            child: TapBox(),
          ),
        ));
  }
}
