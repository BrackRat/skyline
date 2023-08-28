import 'package:flutter/material.dart';
import '../components/tools/tools_default.dart';

class ToolsPage extends StatelessWidget {
  const ToolsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
        child: SingleChildScrollView(
            child: Column(
          children: DefaultToolWidgits().generateWidgets(),
        )));
  }
}
