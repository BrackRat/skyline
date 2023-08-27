import 'package:flutter/material.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';

import '../themes/demo_blue.dart';

class ToolsPage extends StatelessWidget {
  const ToolsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // 学习
        Container(
          padding: EdgeInsets.fromLTRB(28, 60, 0, 0),
          child: Row(
            children: <Widget>[
              Text(
                "学习",
                style: TextStyle(
                    color: colorPrimiary,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ],
          ),
        ),
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            padding: EdgeInsets.all(16),
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(28, 21, 15, 0),
                width: 10,
                height: 80,
                decoration: BoxDecoration(
                  color: colorSecondary,
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Row(
                  children: <Widget>[
                    Icon(
                      MingCuteIcons.mgc_globe_line,
                      size: 32,
                      color: colorPrimiary,
                    ),
                    Column(
                      children: <Widget>[Text("成绩查询"), Text("desc...")],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(28, 21, 15, 0),
                width: 160,
                height: 80,
                decoration: BoxDecoration(
                  color: colorSecondary,
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Row(
                  children: <Widget>[
                    Icon(
                      MingCuteIcons.mgc_globe_line,
                      size: 32,
                      color: colorPrimiary,
                    ),
                    Column(
                      children: <Widget>[Text("成绩查询"), Text("desc...")],
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
