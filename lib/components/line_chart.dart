import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:skyline/themes/demo_blue.dart';

class LineChart extends StatelessWidget {
  const LineChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(28)),
      child: Expanded(child: _buildDefaultAreaChart()),
    );
  }

  SfCartesianChart _buildDefaultAreaChart() {
    final List<ChartSampleData> chartData = <ChartSampleData>[
      ChartSampleData(x: DateTime(2000), y: 6),
      ChartSampleData(x: DateTime(2001), y: 5.0),
      ChartSampleData(x: DateTime(2002), y: 4.8),
      ChartSampleData(x: DateTime(2003), y: 3.4),
      ChartSampleData(x: DateTime(2004), y: 3.2),
      ChartSampleData(x: DateTime(2005), y: 2.5),
    ];

    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      primaryXAxis: DateTimeAxis(
        isVisible: false, // Hide the x-axis
      ),
      primaryYAxis: NumericAxis(
        isVisible: false, // Hide the y-axis
      ),
      series: <AreaSeries<ChartSampleData, DateTime>>[
        AreaSeries<ChartSampleData, DateTime>(
          dataSource: chartData,
          opacity: 1,
          color: colorPrimiary30, // Set your desired color here
          xValueMapper: (ChartSampleData sales, _) => sales.x as DateTime,
          yValueMapper: (ChartSampleData sales, _) => sales.y,
        ),
      ],
      tooltipBehavior: TooltipBehavior(enable: false),
    );
  }
}

class ChartSampleData {
  final DateTime x;
  final double y;

  ChartSampleData({
    required this.x,
    required this.y,
  });
}
