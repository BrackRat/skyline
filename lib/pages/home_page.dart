import 'package:flutter/material.dart';
import 'package:skyline/components/fav_components.dart';
import 'package:skyline/themes/demo_blue.dart';
import '../components/time_table.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            padding: EdgeInsets.fromLTRB(15, 60, 15, 0),
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Hi BrackRat!",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: colorPrimiary),
                    ),
                    Text(
                      "早上好!",
                      style: TextStyle(fontSize: 12, color: colorBlack60),
                    )
                  ],
                ),
              ],
            )),
        TimeTable(),
        Expanded(
          child: FavComponents(onUpdate: () {
            setState(() {});
          }),
        )
      ],
    );
  }
}
