import 'package:flutter/material.dart';
import './model/sync_op.dart';
import './components/weather_grid.dart';
import './themes/demo_blue.dart';

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
  Map<String, dynamic>? data;

  @override
  void initState() {
    super.initState();
    _getStatus();
  }

  void _getStatus() async {
    setState(() {
      data = null;
    });
    final result = await getSyncStatus();
    setState(() {
      data = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: colorBackground,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: data != null
                ? Container(
                    child: WeatherGrid(
                      data: data,
                    ),
                  )
                : Center(child: CircularProgressIndicator()),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _getStatus,
      //   child: Icon(Icons.refresh),
      // ),
    );
  }
}
