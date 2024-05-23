

import 'package:flutter/cupertino.dart';
import 'package:sizing/sizing.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../views/dashboard/widget/tablet/filter_widget_tablet.dart';

class LineChart extends StatelessWidget{
  const LineChart({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return SfCartesianChart(
      // Initialize category axis
        primaryXAxis: CategoryAxis(),
        series: <CartesianSeries>[
          // Initialize line series
          LineSeries<ChartData, String>(
            dataSource: [
              // Bind data source
              ChartData('Jan', 35),
              ChartData('Feb', 28),
              ChartData('Mar', 34),
              ChartData('Apr', 32),
              ChartData('May', 40)
            ],
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y,
            color:  const Color(0xFF0A2342),
            markerSettings:  MarkerSettings(
              isVisible: true,
              color:  const Color(0xFF0A2342),
              // Customize the marker shape
              shape: DataMarkerType.circle,
              // Customize the marker size
              height: 5.ss,
              width: 5.ss,
            ),
          ),

          LineSeries<ChartData, String>(
            dataSource: [
              // Bind data source
              ChartData('Jan', 65),
              ChartData('Feb', 40),
              ChartData('Mar', 20),
              ChartData('Apr', 54),
              ChartData('May', 54)
            ],
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y,
            color: Color(0xFF50C878),
            markerSettings:  MarkerSettings(
              isVisible: true,
              color:  Color(0xFF50C878),
              // Customize the marker shape
              shape: DataMarkerType.circle,
              // Customize the marker size
              height: 5.ss,
              width: 5.ss,
            ),
          ),

          LineSeries<ChartData, String>(
            dataSource: [
              // Bind data source
              ChartData('Jan', 20),
              ChartData('Feb', 25),
              ChartData('Mar', 34),
              ChartData('Apr', 45),
              ChartData('May', 56)
            ],
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y,
            color: Color(0xFF0A2342),
            markerSettings:  MarkerSettings(
              isVisible: true,
              color:  Color(0xFF0A2342),
              // Customize the marker shape
              shape: DataMarkerType.circle,
              // Customize the marker size
              height: 5.ss,
              width: 5.ss,
            ),
          )
        ]
    );
  }

}