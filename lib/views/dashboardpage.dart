import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../view_models/line_chart.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          " Dashboard ",
          style: TextStyle(color: Colors.green),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: mediaQueryHeight * 0.3,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff2c274c),
                              Color(0xff46426c),
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "25",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("UP",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.green)),
                          Icon(
                            Icons.keyboard_arrow_up,
                            size: 30,
                            color: Colors.green,
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff2c274c),
                              Color(0xff46426c),
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "25",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("DOWN",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.red)),
                          Icon(
                            Icons.keyboard_arrow_down,
                            size: 30,
                            color: Colors.red,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: mediaQueryHeight * 0.6,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: LineChartPage(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
