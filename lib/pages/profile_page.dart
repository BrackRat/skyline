import 'package:flutter/material.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';
import '../themes/demo_blue.dart';
import '../components/profile_item.dart';
import '../components/settings/setting_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 获取当前设备的最小方向长度
    double shortestSide = MediaQuery.of(context).size.shortestSide;

    // 计算容器的宽度和高度
    double containerSize = shortestSide - 30;

    return Container(
        padding: const EdgeInsets.fromLTRB(25, 60, 25, 0),
        child: Column(
          children: <Widget>[
            Container(
              width: containerSize + 60,
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
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
                        margin: EdgeInsets.fromLTRB(12, 32, 12, 0),
                        child: Wrap(
                          alignment: WrapAlignment.spaceAround,
                          spacing: 22,
                          runSpacing: 22,
                          children: [
                            ProfileItem(title: "学院", text: "计算机科学与技术学院"),
                            ProfileItem(title: "专业", text: "计算机科学与技术"),
                            ProfileItem(title: "学号", text: "23030100006"),
                            ProfileItem(title: "性别", text: "男"),
                          ],
                        ))
                  ],
                ),
              ),
            ),
            const SizedBox(width: 0.0, height: 25.0),
            Container(
                // padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                decoration: BoxDecoration(
                  color: colorSecondary,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(width: 0.0, height: 12.0),
                    SettingItem(
                        icon: MingCuteIcons.mgc_settings_1_line, text: "设置"),
                    SizedBox(height: 7.0),
                    Container(
                      margin: EdgeInsets.only(left: 24 + 8 + 12),
                      height: 1.0, // 设置分隔符的高度
                      width: double.infinity, // 将分隔符的宽度设置为最大
                      color: colorPrimiary30, // 设置分隔符的颜色
                    ),
                    SizedBox(height: 7.0),
                    SettingItem(
                        icon: MingCuteIcons.mgc_group_line, text: "账户配置"),
                    SizedBox(width: 0.0, height: 12.0),
                  ],
                )),
            const SizedBox(width: 0.0, height: 25.0),
            Container(
                // padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                decoration: BoxDecoration(
                  color: colorSecondary,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(width: 0.0, height: 12.0),
                    SettingItem(icon: MingCuteIcons.mgc_alert_line, text: "反馈"),
                    SizedBox(height: 7.0),
                    Container(
                      margin: EdgeInsets.only(left: 24 + 8 + 12),
                      height: 1.0, // 设置分隔符的高度
                      width: double.infinity, // 将分隔符的宽度设置为最大
                      color: colorPrimiary30, // 设置分隔符的颜色
                    ),
                    SizedBox(height: 7.0),
                    SettingItem(
                        icon: MingCuteIcons.mgc_information_line, text: "关于"),
                    SizedBox(width: 0.0, height: 12.0),
                  ],
                ))
          ],
        ));
  }
}
