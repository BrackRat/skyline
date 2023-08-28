import 'package:flutter/material.dart';
import '../themes/demo_blue.dart';

class ProfileItem extends StatelessWidget {
  final String title;
  final String text;
  const ProfileItem({Key? key, required this.title, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center, // 居中对齐

      height: 60,
      width: 100,
      child: Column(
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(color: colorWhite80, fontSize: 14),
          ),
          Text(
            textAlign: TextAlign.center, // 文本居中对齐
            text,
            style: const TextStyle(
                color: colorWhite, fontSize: 14, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
