import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
class Chart extends StatefulWidget {
  const Chart({super.key});

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 300,
        child: SfCartesianChart(
          primaryXAxis: CategoryAxis(),
          series: <SplineSeries<SalesData,String>>[
            SplineSeries<SalesData,String>(
              color: Color.fromARGB(225, 47, 125, 121),
              width: 5,
              dataSource:<SalesData>[
              SalesData(100, 'mon'),
                SalesData(20, 'tue'),
                SalesData(40, 'web'),
                SalesData(15, 'sat'),
        ],
              xValueMapper: (SalesData sales,_)=>sales.year,
              yValueMapper: (SalesData sales,_)=>sales.sales,
            ),
        ],
        ),
    );
  }
}
class SalesData{
  SalesData(this.sales,this.year);
  late final String year;
  final int sales;
}
