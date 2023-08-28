import 'package:flutter/material.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';
import '../themes/demo_blue.dart';


class ItemData {
  final IconData icon;
  final String title;
  final String? data;
  final String desc;
  final String lastUpdatedTime;
  final double progress;
  final bool isBold;
  final Widget? backgroundChildren;
  final Function? onTapFn;

  ItemData({
    required this.icon,
    required this.title,
    this.data = "",
    required this.desc,
    required this.lastUpdatedTime,
    this.progress = -1,
    this.isBold = false,
    this.backgroundChildren,
    this.onTapFn,
  });
}

class WeatherItem extends StatelessWidget {
  final ItemData itemData;
  const WeatherItem({
    Key? key,
    required this.itemData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        itemData.onTapFn != null ? itemData.onTapFn!() : null;
      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(15, 21, 15, 0),
        width: 160,
        height: 160,
        decoration: BoxDecoration(
          color: itemData.isBold ? colorPrimiary : colorSecondary,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // 标题和安慰图标
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  itemData.title,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: itemData.isBold ? colorWhite : colorPrimiary),
                ),
                itemData.onTapFn != null
                    ? Icon(
                        MingCuteIcons.mgc_more_2_fill,
                        color: itemData.isBold ? colorWhite : colorPrimiary,
                        size: 16,
                      )
                    : const SizedBox(width: 0.0, height: 0.0)
              ],
            ),
            // 大图标和数据
            Container(
              padding: const EdgeInsets.fromLTRB(2, 16, 2, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(itemData.icon,
                      size: 48,
                      color: itemData.isBold ? colorWhite : colorPrimiary),
                  itemData.data != ""
                      ? Row(
                          children: <Widget>[
                            Text(itemData.data!,
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    textBaseline: TextBaseline.ideographic,
                                    color: itemData.isBold
                                        ? colorWhite
                                        : colorPrimiary)),
                            Text(
                              itemData.desc,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  textBaseline: TextBaseline.ideographic,
                                  color: itemData.isBold
                                      ? colorWhite
                                      : colorPrimiary),
                            )
                          ],
                        )
                      : Container(
                          width: 76.0,
                          height: 32.0,
                          decoration: BoxDecoration(
                            color: itemData.isBold
                                ? colorWhite20
                                : colorPrimiary40,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        )
                ],
              ),
            ),
            // Expanded(
            //   child: SizedBox(height: 1),
            // ),
            // 进度条与上次更新
            Container(
              padding: const EdgeInsets.fromLTRB(0, 14, 0, 0),
              child: Column(
                children: <Widget>[
                  itemData.progress != -1.0
                      ? LinearProgressIndicator(
                          value: itemData.progress,
                          minHeight: 6,
                          backgroundColor:
                              itemData.isBold ? colorWhiheBG : colorWhite80,
                          color: itemData.isBold ? colorWhite : colorPrimiary,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)))
                      : const SizedBox(width: 0.0, height: 0.0),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '上次更新:' + itemData.lastUpdatedTime,
                          style: TextStyle(
                              color: itemData.isBold
                                  ? colorWhite60
                                  : colorPrimiary60,
                              fontSize: 8),
                        ),
                        itemData.progress != -1.0
                            ? Text(
                                "${(itemData.progress * 100).toInt()}%",
                                style: TextStyle(
                                    color: itemData.isBold
                                        ? colorWhite60
                                        : colorPrimiary60,
                                    fontSize: 8),
                              )
                            : SizedBox(width: 0.0, height: 0.0),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
