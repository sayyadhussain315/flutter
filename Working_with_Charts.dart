import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';

void main() => runApp(_ChartApp());

class _ChartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Charts in Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: _MyHomePage(),
    );
  }
}
class _MyHomePage extends StatefulWidget {
  _MyHomePage();
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<_MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Chart In Flutter'),
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
        ),
        body: SfCartesianChart(
            primaryXAxis: CategoryAxis(),
            // Chart title
            title: ChartTitle(text: 'Yearly Petrol Price Tracking Chart'),
            // Enable legend
            legend: Legend(isVisible: true),
            // Enable tooltip
            tooltipBehavior: TooltipBehavior(enable: true),
            series: <CartesianSeries<_Infections, String>>[
              LineSeries<_Infections, String>(
                  dataSource: <_Infections>[
                    _Infections("2016", 70.29),
                    _Infections("2017", 75.50),
                    _Infections("2018", 97.83),
                    _Infections("2019", 113.24),
                    _Infections("2020", 103.97),
                    _Infections("2021", 137.79),
                    _Infections("2022", 224.80),
                    _Infections("2023", 283.38),
                    _Infections("2024", 283.38),
                    _Infections("2025", 265.44),
                    _Infections("2026", 376.00),
                    ],
                  xValueMapper: (_Infections victims, _) => victims.year,
                  yValueMapper: (_Infections victims, _) => victims.victims,
                  // Enable data label
                  dataLabelSettings: DataLabelSettings(isVisible: true))
            ]));
  }
}

class _Infections {
  _Infections(this.year, this.victims);

  final String  year;
  final double victims;
}