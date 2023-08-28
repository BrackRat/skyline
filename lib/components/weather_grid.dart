import 'package:flutter/material.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';
import 'weather_item.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../components/bottom_reminder.dart';

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

    void showToast(String msg) {
      Fluttertoast.showToast(
          msg: msg,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          fontSize: 16.0);
    }

    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        Wrap(
          spacing: 16,
          runSpacing: 16,
          children: [
            WeatherItem(
              itemData: ItemData(
                  icon: MingCuteIcons.mgc_thermometer_line,
                  title: "温度",
                  data: "${data!['data']['temperature']}",
                  desc: "C",
                  progress: 0.3,
                  isBold: true,
                  onTapFn: () => showToast("温度"),
                  lastUpdatedTime: "3分钟前"),
            ),
            WeatherItem(
              itemData: ItemData(
                  icon: MingCuteIcons.mgc_cloud_line,
                  title: "空气质量",
                  data: "${data!['data']['air_quality']}",
                  desc: "AQI",
                  progress: 0.2,
                  onTapFn: () => showToast("空气质量"),
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
        ),
        BottomReminder()
      ],
    ));
  }
}
