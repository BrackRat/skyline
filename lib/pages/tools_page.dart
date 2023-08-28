import 'package:flutter/material.dart';
import 'package:skyline/components/bottom_reminder.dart';
import '../components/tools/tools_default.dart';

class ToolsPage extends StatelessWidget {
  const ToolsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];
    widgets.addAll(DefaultToolWidgits().generateWidgets());
    widgets.add(BottomReminder());
    return Container(
        padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
        child: SingleChildScrollView(
            child: Column(
          children: widgets,
        )));
  }
}
