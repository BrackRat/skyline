import 'package:flutter/material.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';
import 'package:skyline/themes/demo_blue.dart';

class SettingItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function? onTapFn;
  const SettingItem(
      {Key? key, required this.icon, required this.text, this.onTapFn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTapFn,
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Icon(
              icon,
              size: 24,
            ),
          ),
          const SizedBox(width: 8.0, height: 0.0),
          Expanded(
              child: Text(
            text,
            style: const TextStyle(fontSize: 16, color: colorBlack),
          )),
          const Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(
              MingCuteIcons.mgc_right_line,
              size: 24,
            ),
          )
        ],
      ),
    );
  }
}
