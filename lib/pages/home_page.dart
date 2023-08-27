import 'package:skyline/themes/demo_blue.dart';

import '../components/weather_grid.dart';
import 'package:flutter/material.dart';
import '../model/sync_op.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String, dynamic>? data;

  @override
  void initState() {
    super.initState();
    _getStatus();
  }

  void _getStatus() async {
    setState(() {
      data = null;
    });
    final result = await getSyncStatus();
    setState(() {
      data = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            padding: EdgeInsets.fromLTRB(15, 60, 15, 0),
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Hi BrackRat!",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: colorPrimiary),
                    ),
                    Text(
                      "早上好!",
                      style: TextStyle(fontSize: 12, color: colorBlack60),
                    )
                  ],
                ),
              ],
            )),
        Container(
            margin: EdgeInsets.fromLTRB(15, 8, 15, 0),
            decoration: BoxDecoration(
              border: Border.all(
                color: colorPrimiary,
                width: 3,
              ),
              borderRadius: BorderRadius.circular(26),
            ),
            child: Container(
              padding: EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        "高等数学",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: colorPrimiary),
                      ),
                      Text(
                        "A-208\n艾AA",
                        style: TextStyle(fontSize: 14, color: colorPrimiary60),
                      )
                    ],
                  ),
                  Icon(
                    MingCuteIcons.mgc_diamond_2_line,
                    size: 68,
                    color: colorPrimiary,
                  )
                ],
              ),
            )),
        Container(
          padding: EdgeInsets.fromLTRB(21, 24, 21, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "收藏组件",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: colorPrimiary),
              ),
              Text(
                "浏览全部",
                style: TextStyle(fontSize: 12, color: colorBlack30),
              ),
            ],
          ),
        ),
        Expanded(
          child: data != null
              ? Container(
                  child: WeatherGrid(
                    data: data,
                  ),
                )
              : Center(child: CircularProgressIndicator()),
        ),
      ],
    );
  }
}
