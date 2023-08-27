import 'package:flutter/material.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';
import 'weather_item.dart';

class WeatherGrid extends StatefulWidget {
  final Map<String, dynamic>? data;
  const WeatherGrid({Key? key, required this.data}) : super(key: key);

  @override
  _WeatherGridState createState() => _WeatherGridState();
}

class _WeatherGridState extends State<WeatherGrid> {
  @override
  Widget build(BuildContext context) {
    final data = widget.data;

    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      padding: EdgeInsets.all(16),
      children: [
        WeatherItem(
          itemData: ItemData(
              icon: MingCuteIcons.mgc_thermometer_line,
              title: "温度",
              data: "${data!['data']['temperature']}",
              desc: "C",
              progress: 0.3,
              isBold: true,
              lastUpdatedTime: "3分钟前"),
        ),
        WeatherItem(
          itemData: ItemData(
              icon: MingCuteIcons.mgc_cloud_line,
              title: "空气质量",
              data: "${data!['data']['air_quality']}",
              desc: "AQI",
              progress: 0.2,
              lastUpdatedTime: "3分钟前"),
        ),
        WeatherItem(
          itemData: ItemData(
              icon: MingCuteIcons.mgc_drop_line,
              title: "湿度",
              data: "${data!['data']['humidity']}",
              desc: "%",
              lastUpdatedTime: "3分钟前"),
        ),
        WeatherItem(
          itemData: ItemData(
              icon: MingCuteIcons.mgc_wind_line,
              title: "大气压",
              data: "${data!['data']['pressure']}",
              desc: "hPa",
              lastUpdatedTime: "3分钟前"),
        ),
        WeatherItem(
          itemData: ItemData(
              icon: MingCuteIcons.mgc_safe_alert_fill,
              title: "大气压",
              desc: "hPa",
              isBold: true,
              lastUpdatedTime: "1分钟前"),
        ),
        WeatherItem(
          itemData: ItemData(
              icon: MingCuteIcons.mgc_align_left_line,
              title: "大气压",
              desc: "hPa",
              // isBold: true,
              lastUpdatedTime: "1分钟前"),
        ),
      ],
    );
  }
}
