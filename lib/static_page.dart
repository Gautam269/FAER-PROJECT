import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:charts_flutter/flutter.dart' as charts;

class StatisticsPage extends StatefulWidget {
  @override
  _StatisticsPageState createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {

  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  bool showAvg = false;

//  final Color leftBarColor = const Color(0xff53fdd7);
//  final Color rightBarColor = const Color(0xffff5182);
//  final double width = 7;
//
//  List<BarChartGroupData> rawBarGroups;
//  List<BarChartGroupData> showingBarGroups;
//
//  int touchedGroupIndex;
//
//  @override
//  void initState() {
//    super.initState();
//    final barGroup1 = makeGroupData(0, 5, 12);
//    final barGroup2 = makeGroupData(1, 16, 12);
//    final barGroup3 = makeGroupData(2, 18, 5);
//    final barGroup4 = makeGroupData(3, 20, 16);
//    final barGroup5 = makeGroupData(4, 17, 6);
//    final barGroup6 = makeGroupData(5, 19, 1.5);
//    final barGroup7 = makeGroupData(6, 10, 1.5);
//
//    final items = [
//      barGroup1,
//      barGroup2,
//      barGroup3,
//      barGroup4,
//      barGroup5,
//      barGroup6,
//      barGroup7,
//    ];
//
//    rawBarGroups = items;
//
//    showingBarGroups = rawBarGroups;
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
      children: <Widget>[
        SafeArea(
          top: true,
          left: true,
          right: true,
          child: Padding(
            padding: const EdgeInsets.only(left: 16,right: 16,top: 16),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.more_horiz),
              ),
              Text("Heart Health", style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),
              IconButton(
                icon: Icon(Icons.keyboard_arrow_down),
                onPressed: (){
                  Navigator.of(context).pop();
                  },
              )
            ],
          ),
        ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            padding: EdgeInsets.only(left: 24,top: 48,right: 24),
            height: MediaQuery.of(context).size.height - 98,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(32),
                topLeft: Radius.circular(32),
              )
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Beats Per Minute",style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),),
                    Spacer(),
                    Icon(
                      Icons.calendar_today,
                      color: Colors.white,
                      size: 18,
                    ),
                    SizedBox(width: 8,),
                    Text("25 April, 2020",style: TextStyle(
                      color: Colors.white,
                    ),
                    ),
                  ],
                ),
                SizedBox(height: 16,),
                Row(
                  children: <Widget>[
                    Container(
                      height: 28,
                      width: 80,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white.withOpacity(.3)),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Center(
                        child: Text("Week",style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),),
                      ),
                    ),
                    SizedBox(width: 16,),
                    Container(
                      height: 28,
                      width: 80,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Center(
                        child: Text("Month",style: TextStyle(
                          color: Colors.white.withOpacity(.3),
                          fontSize: 18,
                        ),),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 350,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Stack(
                      children: <Widget>[
                        AspectRatio(
                          aspectRatio: 1.50,
                          child: Container(
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(18),
                                ),
                                color: Color(0xff232d37)),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 18.0, left: 12.0, top: 24, bottom: 12),
                              child: LineChart(
                                mainData(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
//                  child: BarChart(
//                    BarChartData(
//                      alignment: BarChartAlignment.spaceBetween,
//                      maxY: 20,
//                      titlesData: FlTitlesData(
//                        show: true,
//                        bottomTitles: SideTitles(
//                          showTitles: true,
//                          textStyle: TextStyle(
//                            color: Colors.white,
//                            fontSize: 12,
//                          ),
//                          margin: 20,
//                          getTitles: (double value){
//                            switch(value.toInt()){
//                              case 0:
//                                return "19";
//                              case 1:
//                                return "20";
//                              case 2:
//                                return "21";
//                              case 3:
//                                return "22";
//                              case 4:
//                                return "23";
//                              case 5:
//                                return "24";
//                              case 6:
//                                return "25";
//                              case 7:
//                                return "26";
//                              default:
//                                return '';
//                            }
//                          }
//                        ),
//                        leftTitles: SideTitles(
//                            showTitles: true,
//                        textStyle: TextStyle(
//                          color: Colors.white,
//                          fontWeight: FontWeight.bold,
//                          fontSize: 14,
//                        ),
//                          margin: 32,
//                          reservedSize: 14,
//                          getTitles: (value){
//                              if (value == 0){
//                                return '0';
//                              }
//                              else if (value==12){
//                                return '68';
//                              }
//                              else if (value==14){
//                                return '75';
//                              }
//                              else if (value==15){
//                                return '82';
//                              }
//                              else if (value==16){
//                                return '90';
//                              }
//                              else if (value==17){
//                                return '94';
//                              }
//                              else if (value==18){
//                                return '100';
//                              }
//                            else
//                            return '';
//                          }
//                        ),
//                      ),
//                      borderData: FlBorderData(show: false,),
//                      barGroups: [
//                        BarChartGroupData (
//                          x: 0,
//                          barRods: [BarChartRodData(y: 14,color: Colors.deepOrange)],
//                        ),
//                        BarChartGroupData (
//                          x: 1,
//                          barRods: [BarChartRodData(y: 15,color: Colors.deepOrange)],
//                        ),
//                        BarChartGroupData (
//                          x: 2,
//                          barRods: [BarChartRodData(y: 14,color: Colors.deepOrange)],
//                        ),
//                        BarChartGroupData (
//                          x: 3,
//                          barRods: [BarChartRodData(y: 12,color: Colors.deepOrange)],
//                        ),
//                        BarChartGroupData (
//                          x: 4,
//                          barRods: [BarChartRodData(y: 16,color: Colors.deepOrange)],
//                        ),
//                        BarChartGroupData (
//                          x: 5,
//                          barRods: [BarChartRodData(y: 17,color: Colors.deepOrange)],
//                        ),
//                        BarChartGroupData (
//                          x: 6,
//                          barRods: [BarChartRodData(y: 18,color: Colors.deepOrange)],
//                        ),
//                      ]
//                    ),
//                  ),
                ),
                Spacer(),
                Container(
                  height: 80,
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 58,
                        width: 52,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: 100,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Text("MIN",style: TextStyle(
                                color: Colors.white,
                            ),),
                            ),
                            Positioned(
                              top: 16,
                              left: 16,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("64",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                  ),),
                                  Text("BPM",style: TextStyle(
                                    color: Colors.white.withOpacity(0.3),
                                    fontSize: 16,
                                  ))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Container(
                        width: 100,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Text("MAX",style: TextStyle(
                                color: Colors.white,
                              ),),
                            ),
                            Positioned(
                              top: 16,
                              left: 16,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("146",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                  ),),
                                  Text("BPM",style: TextStyle(
                                    color: Colors.white.withOpacity(0.3),
                                    fontSize: 16,
                                  ))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
        ),
        )
      ],
    ),
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalGrid: true,
        getDrawingHorizontalGridLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingVerticalGridLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          textStyle:
          const TextStyle(color: Color(0xff68737d),
              fontWeight: FontWeight.bold,
              fontSize: 16),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return 'Tue';
              case 3:
                return 'Wed';
              case 5:
                return 'Thi';
              case 7:
                return 'Fri';
              case 9:
                return 'Sat';
              case 11:
                return 'Sun';
//              case 12:
//                return 'Mon';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          textStyle: const TextStyle(
            color: Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '40';
              case 3:
                return '64';
              case 5:
                return '160';
            }
            return '';
          },
          reservedSize: 28,
          margin: 12,
        ),
      ),
      borderData:
      FlBorderData(show: true,
          border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 3),
            FlSpot(1, 2),
            FlSpot(3, 5),
            FlSpot(5, 3.1),
            FlSpot(7, 4),
            FlSpot(9, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          colors: gradientColors,
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors: gradientColors.map((color) => color.withOpacity(0.3))
                .toList(),
          ),
        ),
      ],
    );
  }
//BarChartGroupData makeGroupData(int x, double y1, double y2) {
//  return BarChartGroupData(barsSpace: 4, x: x, barRods: [
//    BarChartRodData(
//      y: y1,
//      color: leftBarColor,
//      width: width,
//    ),
//    BarChartRodData(
//      y: y2,
//      color: rightBarColor,
//      width: width,
//    ),
//  ]);
//}

//Widget makeTransactionsIcon() {
//  const double width = 4.5;
//  const double space = 3.5;
//  return Row(
//    mainAxisSize: MainAxisSize.min,
//    crossAxisAlignment: CrossAxisAlignment.center,
//    children: <Widget>[
//      Container(
//        width: width,
//        height: 10,
//        color: Colors.white.withOpacity(0.4),
//      ),
//      const SizedBox(
//        width: space,
//      ),
//      Container(
//        width: width,
//        height: 28,
//        color: Colors.white.withOpacity(0.8),
//      ),
//      const SizedBox(
//        width: space,
//      ),
//      Container(
//        width: width,
//        height: 42,
//        color: Colors.white.withOpacity(1),
//      ),
//      const SizedBox(
//        width: space,
//      ),
//      Container(
//        width: width,
//        height: 28,
//        color: Colors.white.withOpacity(0.8),
//      ),
//      const SizedBox(
//        width: space,
//      ),
//      Container(
//        width: width,
//        height: 10,
//        color: Colors.white.withOpacity(0.4),
//      ),
//    ],
//  );
//}
}

