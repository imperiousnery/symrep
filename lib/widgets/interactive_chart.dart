import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class InteractiveChart extends StatelessWidget {
  final List<charts.Series<dynamic, num>> seriesList;
  final bool animate;

  const InteractiveChart(this.seriesList, {super.key, required this.animate});

  @override
  Widget build(BuildContext context) {
    return charts.LineChart(
      seriesList,
      animate: animate,
      behaviors: [
        charts.PanAndZoomBehavior(),
      ],
    );
  }
}
