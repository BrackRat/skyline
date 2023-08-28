import 'package:flutter/material.dart';
import './tools_structure.dart';
import 'package:skyline/themes/demo_blue.dart';

class ToolsGrid extends StatelessWidget {
  final ToolData toolData;
  final List<Widget> toolsWidgets;
  const ToolsGrid(
      {Key? key, required this.toolData, required this.toolsWidgets})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 21, 15, 0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                toolData.header,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: colorPrimiary),
              ),
            ],
          ),
          Container(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                spacing: 12,
                runSpacing: 12,
                children: toolsWidgets,
              ))
        ],
      ),
    );
  }
}
