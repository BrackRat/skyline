import 'package:flutter/src/widgets/icon_data.dart';
import 'package:flutter/material.dart';

class ToolData {
  final String header;
  final List<ToolItemData> items;

  ToolData({
    required this.header,
    required this.items,
  });
}

class ToolItemData {
  final IconData icon;
  final String title;
  final String desc;
  final Function? onTapFn;

  ToolItemData(
      {required this.icon,
      required this.title,
      required this.desc,
      this.onTapFn});
}
