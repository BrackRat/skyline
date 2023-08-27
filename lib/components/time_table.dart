import 'package:flutter/material.dart';
import 'package:skyline/themes/demo_blue.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';

class TimeTable extends StatelessWidget {

  const TimeTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
        ));
  }
}
