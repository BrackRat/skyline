import 'package:flutter/material.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';
import './tools_structure.dart';
import './tools_grid_child.dart';
import './tools_grid.dart';

List<ToolData> defaultTools = [
  ToolData(header: "学习", items: [
    ToolItemData(
        icon: MingCuteIcons.mgc_globe_line, title: "成绩查询", desc: "希望没挂科"),
    ToolItemData(
        icon: MingCuteIcons.mgc_youtube_line, title: "考试查询", desc: "上天保佑时间"),
    ToolItemData(
        icon: MingCuteIcons.mgc_youtube_line, title: "空闲教室", desc: "找个地方自习"),
  ]),
  ToolData(header: "生活", items: [
    ToolItemData(icon: MingCuteIcons.mgc_globe_line, title: "", desc: "生活1"),
    ToolItemData(icon: MingCuteIcons.mgc_youtube_line, title: "", desc: "生活2"),
  ]),
];

class DefaultToolWidgits {
  List<Widget> generateWidgets() {
    List<ToolsGrid> widgets = [];
    defaultTools.forEach((element) {
      widgets.add(ToolsGrid(
        toolData: element,
        toolsWidgets:
            DefaultToolsItemWidgets().generateChildWidgets(element.items),
      ));
    });
    return widgets;
  }
}

class DefaultToolsItemWidgets {
  List<Widget> generateChildWidgets(List<ToolItemData> some) {
    List<ToolsGridChild> widgets = [];
    some.forEach((element) {
      widgets.add(ToolsGridChild(toolItemData: element));
    });
    return widgets;
  }
}
