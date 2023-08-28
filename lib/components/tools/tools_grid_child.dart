import 'package:flutter/material.dart';
import 'package:skyline/themes/demo_blue.dart';
import './tools_structure.dart';

class ToolsGridChild extends StatelessWidget {
  final ToolItemData toolItemData;

  const ToolsGridChild({Key? key, required this.toolItemData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 160,
      decoration: BoxDecoration(
        color: colorSecondary,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Icon(
              toolItemData.icon,
              size: 40,
              color: colorPrimiary,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  toolItemData.title,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: colorPrimiary),
                ),
                Text(
                  toolItemData.desc,
                  style: TextStyle(fontSize: 12, color: colorPrimiary60),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
