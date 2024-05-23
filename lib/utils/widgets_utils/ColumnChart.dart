

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ColumnChart extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(

        child: SfCartesianChart(
          // Initialize category axis
          primaryXAxis: CategoryAxis(),
          series: <CartesianSeries>[
            // Range Column Series
            RangeColumnSeries<ChartData, String>(
              dataSource: [
                ChartData('Jan', 20, 40),
                ChartData('Feb', 30, 50),
                ChartData('Mar', 25, 45),

              ],
              color: Color(0xFF0A2342),

              xValueMapper: (ChartData data, _) => data.x,
              lowValueMapper: (ChartData data, _) => data.low,
              highValueMapper: (ChartData data, _) => data.high,
            ),

            RangeColumnSeries<ChartData, String>(
              dataSource: [

                ChartData('Apr', 35, 55),
                ChartData('May', 40, 60)
              ],
              color: Color(0xFF50C878),
              xValueMapper: (ChartData data, _) => data.x,
              lowValueMapper: (ChartData data, _) => data.low,
              highValueMapper: (ChartData data, _) => data.high,
            ),
          ],
        ),
      ),
    );
  }
  
}

class ChartData {
  final String x;
  final double low;
  final double high;

  ChartData(this.x, this.low, this.high);
}

