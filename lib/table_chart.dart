import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_repo/data/price_point.dart';
import 'package:flutter_repo/tab_bar_screen.dart';

class TableAndChartScreen extends StatefulWidget {
  const TableAndChartScreen({super.key, required this.points});

  final List<PricePoint> points;

  @override
  State<TableAndChartScreen> createState() =>
      _TableAndChartScreenState(points: this.points);
}

class _TableAndChartScreenState extends State<TableAndChartScreen> {
  final List<PricePoint> points;
  _TableAndChartScreenState({required this.points});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Table and Chart'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.all(20),
                  child: Table(
                    defaultColumnWidth: const FixedColumnWidth(120.0),
                    border: TableBorder.all(
                        color: Colors.red, style: BorderStyle.solid, width: 2),
                    children: [
                      TableRow(children: [
                        Column(children: const [
                          Text('Website', style: TextStyle(fontSize: 20.0))
                        ]),
                        Column(children: const [
                          Text('Tutorial', style: TextStyle(fontSize: 20.0))
                        ]),
                        Column(children: const [
                          Text('Review', style: TextStyle(fontSize: 20.0))
                        ]),
                      ]),
                      TableRow(children: [
                        Column(children: const [Text('Javatpoint')]),
                        Column(children: const [Text('Flutter')]),
                        Column(children: const [Text('5*')]),
                      ]),
                      TableRow(children: [
                        Column(children: const [Text('Javatpoint')]),
                        Column(children: const [Text('MySQL')]),
                        Column(children: const [Text('5*')]),
                      ]),
                      TableRow(children: [
                        Column(children: const [Text('Javatpoint')]),
                        Column(children: const [Text('ReactJS')]),
                        Column(children: const [Text('5*')]),
                      ]),
                    ],
                  )),
              const Text(
                'Line Chart',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.3),
              ),
              AspectRatio(
                aspectRatio: 2,
                child: LineChart(
                  LineChartData(
                    lineBarsData: [
                      LineChartBarData(
                        spots: [
                          FlSpot(0, 1),
                          FlSpot(1, 1),
                          FlSpot(2, 3),
                          FlSpot(3, 4),
                          FlSpot(3, 5),
                          FlSpot(4.5, 10)
                        ],
                        isCurved: true,
                        dotData: FlDotData(
                          show: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Text(
                'Bar Chart',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.3),
              ),
              AspectRatio(
                aspectRatio: 2,
                child: BarChart(BarChartData(barGroups: _chartGroups())),
              ),
              // AspectRatio(
              //     aspectRatio: 1.0,
              //     child: PieChart(PieChartData(
              //       centerSpaceRadius: 48.0,
              //       centerSpaceColor: Colors.red
              //     ))),

              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const TabBarScreen();
                      },
                    ));
                  },
                  child: const Text('NEXT'))
            ],
          ),
        ),
      ),
    );
  }

  List<BarChartGroupData> _chartGroups() {
    return points
        .map((point) => BarChartGroupData(
            x: point.x.toInt(), barRods: [BarChartRodData(toY: point.y)]))
        .toList();
  }
}
