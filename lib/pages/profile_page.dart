import 'package:flutter/material.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';
import '../themes/demo_blue.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(24, 60, 24, 0),
          child: Container(
            decoration: BoxDecoration(
              color: colorPrimiary,
              borderRadius: BorderRadius.circular(26),
            ),
            child: Column(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: CircleAvatar(
                      radius: 56, // 一半的宽度
                      backgroundImage: NetworkImage(
                          "https://th.bing.com/th/id/OIP.H2Hykprrq3rztwpWLsg2OwAAAA?pid=ImgDet&rs=1"),
                    )),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
                  child: const Text(
                    '张飞',
                    style: TextStyle(
                        color: colorWhite,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 32, 0, 0),
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            "学院",
                            style: TextStyle(
                              color: colorWhite80,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "计算机科学与技术学院",
                            softWrap: true,
                            style: TextStyle(
                                color: colorWhite,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            "学院",
                            style: TextStyle(
                              color: colorWhite80,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "计算机科学与技术学院",
                            softWrap: true,
                            style: TextStyle(
                                color: colorWhite,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            "学院",
                            style: TextStyle(
                              color: colorWhite80,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "计算机科学与技术学院",
                            softWrap: true,
                            style: TextStyle(
                                color: colorWhite,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Flexible(
            child: Container(
          padding: EdgeInsets.fromLTRB(0, 24, 0, 0),
          child: ListView.builder(
            itemCount: 3, // Replace with the actual item count
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    leading: Icon(MingCuteIcons
                        .mgc_settings_1_line), // Replace with your icon
                    title: Text('设置项 $index'), // Replace with your text
                    trailing: Icon(
                      MingCuteIcons.mgc_right_line,
                      color: colorPrimiary,
                    ), // Replace with your icon
                  ),
                  Divider(), // Add a divider before each item (except the first one)
                ],
              );
            },
          ),
        ))
      ],
    );
  }
}
