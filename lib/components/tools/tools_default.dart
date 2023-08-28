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
        icon: MingCuteIcons.mgc_calendar_line, title: "考试查询", desc: "上天保佑时间"),
    ToolItemData(
        icon: MingCuteIcons.mgc_building_1_line, title: "空闲教室", desc: "找个地方自习"),
    ToolItemData(
        icon: MingCuteIcons.mgc_building_2_line, title: "空间预约", desc: "预约空间"),
  ]),
  ToolData(header: "生活", items: [
    ToolItemData(
        icon: MingCuteIcons.mgc_exchange_cny_line, title: "缴费系统", desc: "交水电"),
    ToolItemData(
        icon: MingCuteIcons.mgc_phone_call_line, title: "后勤报修", desc: "不要断水断网"),
    ToolItemData(
        icon: MingCuteIcons.mgc_chat_2_line, title: "移动门户", desc: "请假专用()"),
    ToolItemData(
        icon: MingCuteIcons.mgc_wifi_line, title: "校园网查询", desc: "希望永不收费"),
    ToolItemData(
        icon: MingCuteIcons.mgc_wifi_line, title: "校园网查询", desc: "希望永不收费"),
    ToolItemData(
        icon: MingCuteIcons.mgc_wifi_line, title: "校园网查询", desc: "希望永不收费"),
    ToolItemData(
        icon: MingCuteIcons.mgc_wifi_line, title: "校园网查询", desc: "希望永不收费"),
    ToolItemData(
        icon: MingCuteIcons.mgc_wifi_line, title: "校园网查询", desc: "希望永不收费"),
    ToolItemData(
        icon: MingCuteIcons.mgc_wifi_line, title: "校园网查询", desc: "希望永不收费"),
    ToolItemData(
        icon: MingCuteIcons.mgc_wifi_line, title: "校园网查询", desc: "希望永不收费"),
    ToolItemData(
        icon: MingCuteIcons.mgc_wifi_line, title: "校园网查询", desc: "希望永不收费"),
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
