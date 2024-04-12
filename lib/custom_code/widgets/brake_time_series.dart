// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:fl_chart/fl_chart.dart';

class BrakeTimeSeries extends StatefulWidget {
  const BrakeTimeSeries({
    Key? key,
    this.width,
    this.height,
    required this.brakedata,
    required this.isMonthly,
  }) : super(key: key);

  final double? width;
  final double? height;
  final dynamic brakedata;
  final bool isMonthly;
  @override
  _BrakeTimeSeriesState createState() => _BrakeTimeSeriesState();
}

class _BrakeTimeSeriesState extends State<BrakeTimeSeries> {
  @override
  Widget build(BuildContext context) {
    int maxY = 0;
    List<FlSpot> brakespots = [];
    widget.brakedata.forEach((k, v) => {
          v > maxY ? maxY = v : maxY = maxY,
          brakespots.add(FlSpot(k.toDouble(), v.toDouble()))
        });

    return Container(
        child: Column(
      children: [
        Row(children: [
          Spacer(),
          Container(
            width: 10.0,
            height: 10.0,
            color: Colors.green,
          ),
          SizedBox(width: 3),
          Text('Brake Pressure'),
          Spacer()
        ]),
        Expanded(
            child: AspectRatio(
          aspectRatio: 2,
          child: LineChart(
            LineChartData(
              lineTouchData: LineTouchData(
                  touchTooltipData: LineTouchTooltipData(
                fitInsideHorizontally:
                    true, // Set this to true to fit the tooltip inside horizontally
                fitInsideVertically: true,
              )),
              lineBarsData: [
                LineChartBarData(
                    spots: brakespots,
                    isStrokeCapRound: true,
                    isCurved: true,
                    dotData: FlDotData(
                      show: true,
                    ),
                    color: Colors.green),
              ],

              borderData: FlBorderData(
                  border:
                      const Border(bottom: BorderSide(), left: BorderSide())),
              gridData: FlGridData(show: false),
              titlesData: FlTitlesData(
                bottomTitles: AxisTitles(sideTitles: _bottomTitles),
                topTitles: AxisTitles(
                  sideTitles: SideTitles(
                    getTitlesWidget: (value, meta) => Container(),
                    showTitles: true,
                    reservedSize: 10,
                  ),
                ),
                rightTitles: AxisTitles(
                    sideTitles: SideTitles(
                        getTitlesWidget: (value, meta) => Container(),
                        showTitles: true,
                        reservedSize: 20)),
              ),
              maxY: maxY + 30,
              minY: 0, // Set the minimum y-axis value to 0
            ),
          ),
        ))
      ],
    ));
  }

  SideTitles get _bottomTitles {
    return SideTitles(
      showTitles: true,
      interval: widget.isMonthly ? 1 : 1, // Adjust interval based on isMonthly
      getTitlesWidget: (value, meta) {
        String text = '';
        if (widget.isMonthly) {
          // Map the value to the corresponding month
          switch (value.toInt()) {
            case 1:
              text = ' Jan';
              break;
            case 2:
              text = ' Feb';
              break;
            case 3:
              text = ' Mar';
              break;
            case 4:
              text = ' Apr';
              break;
            case 5:
              text = ' May';
              break;
            case 6:
              text = ' Jun';
              break;
            case 7:
              text = ' Jul';
              break;
            case 8:
              text = ' Aug';
              break;
            case 9:
              text = ' Sep';
              break;
            case 10:
              text = ' Oct';
              break;
            case 11:
              text = ' Nov';
              break;
            case 12:
              text = ' Dec';
              break;
          }
        } else {
          // Map the value to the corresponding day
          switch (value.toInt()) {
            case 1:
              text = ' Mon';
              break;
            case 2:
              text = ' Tue';
              break;
            case 3:
              text = ' Wed';
              break;
            case 4:
              text = ' Thu';
              break;
            case 5:
              text = ' Fri';
              break;
            case 6:
              text = ' Sat';
              break;
            case 7:
              text = ' Sun';
              break;
          }
        }
        return Text(text);
      },
    );
  }
}
