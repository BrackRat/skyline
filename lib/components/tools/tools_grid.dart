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
            height: (toolsWidgets.length / 2).ceil() * 160,
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 2.0,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
              children: toolsWidgets,
            ),
          )
        ],
      ),
    );
  }
}
