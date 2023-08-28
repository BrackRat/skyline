import 'package:flutter/material.dart';
import 'package:skyline/themes/demo_blue.dart';
import '../components/weather_grid.dart';

import '../model/sync_op.dart';

class FavComponents extends StatefulWidget {
  final VoidCallback onUpdate;
  const FavComponents({Key? key, required this.onUpdate}) : super(key: key);

  @override
  _FavComponentsState createState() => _FavComponentsState();
}

class _FavComponentsState extends State<FavComponents> {
  Map<String, dynamic>? data;

  @override
  void initState() {
    super.initState();
    _getStatus();
  }

  void _getStatus() async {
    data = null;

    data = await getSyncStatus();
    final favComponent = widget;

    // 调用favComponent的onUpdate方法
    favComponent.onUpdate();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
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
        Flexible(
          child: data != null
              ? Container(
                  padding: EdgeInsets.fromLTRB(0, 18, 0, 0),
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
