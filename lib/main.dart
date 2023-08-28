import 'package:flutter/material.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';

import './themes/demo_blue.dart';
import './pages/home_page.dart';
import './pages/tools_page.dart';
import './pages/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: colorPrimiary, background: colorBackground),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Skyline App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      //   backgroundColor: colorBackground,
      // ),
      body: IndexedStack(
        index: _selectedTab.index,
        children: const [
          HomePage(
            username: "张飞",
            welcomeText: "早上好!",
          ),
          ToolsPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab.index,
        onTap: _handleIndexChanged,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(MingCuteIcons.mgc_home_3_line),
              activeIcon: Icon(MingCuteIcons.mgc_home_3_fill),
              label: "首页"),
          BottomNavigationBarItem(
              icon: Icon(MingCuteIcons.mgc_compass_line),
              activeIcon: Icon(MingCuteIcons.mgc_compass_fill),
              label: "工具"),
          BottomNavigationBarItem(
              icon: Icon(MingCuteIcons.mgc_user_2_line),
              activeIcon: Icon(MingCuteIcons.mgc_user_2_fill),
              label: "我"),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _getStatus,
      //   child: Icon(Icons.refresh),
      // ),
    );
  }
}

enum _SelectedTab { home, tools, profile }
