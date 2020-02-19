import 'package:flutter/material.dart';
import 'package:invest_school/app/shared/style/colors.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DashboardPage extends StatefulWidget {
  final String title;
  const DashboardPage({Key key, this.title = "Dashboard"}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final List<ChartData> chartData = [
    ChartData('Savings', 15, '15%'),
    ChartData(
      'Treasure',
      40,
      '40%',
    ),
    ChartData('Properties', 40, '40%,'),
    ChartData('None', 5, '5%')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(
          child: Image.asset("logo.png"),
          height: 90,
          width: 90,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          widget.title,
          style: TextStyle(
            color: Color(PRIMARY_COLOR),
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20, left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width - 20,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(COLOR_THREE),
                    Color(COLOR_TWO),
                  ],
                ),
              ),
              child: SfCircularChart(
                  title: ChartTitle(
                      text: "Products",
                      textStyle: ChartTextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                  legend: Legend(
                      isVisible: true,
                      textStyle: ChartTextStyle(
                        color: Colors.white,
                      )),
                  series: <CircularSeries>[
                    PieSeries<ChartData, String>(
                      dataSource: chartData,
                      pointColorMapper: (ChartData data, _) => data.color,
                      xValueMapper: (ChartData data, _) => data.x,
                      yValueMapper: (ChartData data, _) => data.y,
                      dataLabelMapper: (ChartData data, _) => data.percent,
                      dataLabelSettings: DataLabelSettings(
                        isVisible: true,
                      ),
                      explode: true,
                      explodeAll: true,
                      enableTooltip: true,
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.percent, [this.color]);
  final String x;
  final double y;
  final Color color;
  final String percent;
}
