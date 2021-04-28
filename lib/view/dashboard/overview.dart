import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hris/utils/constant.dart';
// import 'package:analytic/notification/screen/notification.dart';
// import 'package:analytic/overview/model/hbar-chart-model.dart';
// import 'package:analytic/profile/screen/profile.dart';
// import 'package:analytic/overview/model/main-chart-model.dart';
import 'package:hris/utils/widget-model.dart';
import 'package:percent_indicator/percent_indicator.dart';
// import 'package:charts_flutter/flutter.dart' as charts;

class Overview extends StatefulWidget {
  @override
  _OverviewState createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  // static List<charts.Series<LinearSales, int>> _createSampleData() {
  //   final myFakeDesktopData = [
  //     new LinearSales(0, 100),
  //     new LinearSales(1, 25),
  //     new LinearSales(2, 80),
  //     new LinearSales(3, 60),
  //   ];

  //   var myFakeTabletData = [
  //     new LinearSales(0, 80),
  //     new LinearSales(1, 20),
  //     new LinearSales(2, 50),
  //     new LinearSales(3, 70),
  //   ];

  //   var myFakeMobileData = [
  //     new LinearSales(0, 15),
  //     new LinearSales(1, 35),
  //     new LinearSales(2, 40),
  //     new LinearSales(3, 130),
  //   ];

  //   return [
  //     new charts.Series<LinearSales, int>(
  //       id: 'Desktop',
  //       colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
  //       domainFn: (LinearSales sales, _) => sales.year,
  //       measureFn: (LinearSales sales, _) => sales.sales,
  //       data: myFakeDesktopData,
  //     ),
  //     new charts.Series<LinearSales, int>(
  //       id: 'Tablet',
  //       colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
  //       domainFn: (LinearSales sales, _) => sales.year,
  //       measureFn: (LinearSales sales, _) => sales.sales,
  //       data: myFakeTabletData,
  //     ),
  //     new charts.Series<LinearSales, int>(
  //       id: 'Mobile',
  //       colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
  //       domainFn: (LinearSales sales, _) => sales.year,
  //       measureFn: (LinearSales sales, _) => sales.sales,
  //       data: myFakeMobileData,
  //     ),
  //   ];
  // }

  // static List<charts.Series<OrdinalSales, String>> _createSampleHbarData() {
  //   final data = [
  //     new OrdinalSales('Click', 105),
  //     new OrdinalSales('Cost', 10),
  //     new OrdinalSales('Campaign', 80),
  //     new OrdinalSales('Improvement', 45),
  //   ];

  //   return [
  //     new charts.Series<OrdinalSales, String>(
  //       id: 'Sales',
  //       domainFn: (OrdinalSales sales, _) => sales.year,
  //       measureFn: (OrdinalSales sales, _) => sales.sales,
  //       data: data,
  //       // Set a label accessor to control the text of the bar label.
  //       labelAccessorFn: (OrdinalSales sales, _) => '${sales.year}: \$${sales.sales.toString()}'
  //     )
  //   ];
  // }

  @override
  Widget build(BuildContext context) {
    var fullWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(170),
      //   child: Container(
      //     child: AppBar(
      //       backgroundColor: Colors.blueAccent,
      //       elevation: 0,
      //       // automaticallyImplyLeading: true,
      //       title: GestureDetector(
      //         child: Padding(
      //           padding: EdgeInsets.only(top: 30),
      //           child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Row(
      //                 children: [
      //                   dynamicText("Lorem Ipsum's account", fontSize: 18, color: Colors.white, fontWeight: FontWeight.w600),
      //                   Icon(Icons.arrow_drop_down, color: Colors.black,),
      //                 ]
      //               ),
      //               dynamicText("Recomendations", fontSize: 12, color: Colors.black45),
      //             ],
      //           ),
      //         ),
      //         onTap: () {
      //           // navigationManager(context, Profile(), isPushReplaced: false);
      //         },
      //       ),
      //       actions: [
      //         Padding(
      //           padding: EdgeInsets.only(right: 10, top: 30),
      //           child: GestureDetector(
      //             child: Icon(Icons.notifications_outlined, color: Colors.white, size: 30,),
      //             onTap: () {
      //               // navigationManager(context, NotificationScreen(), isPushReplaced: false);
      //             },
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: kPrimaryColor,
              // color: Colors.white,
              width: fullWidth,
              child: Padding(
                padding: EdgeInsets.only(top: 50, bottom: 40, left: kDefaultPadding, right: kDefaultPadding),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                dynamicText("Hi, Syakila", fontSize: 30, color: kContentColorDarkTheme, fontWeight: FontWeight.w600),
                                SizedBox(width: 5),
                                Icon(Icons.keyboard_arrow_down_outlined, color: kContentColorDarkTheme,)

                              ]
                            ),
                            dynamicText("Full-Stack Developer (PT. Ivonesia Solusi Data)", fontSize: 12, color: kContentColorDarkTheme),
                            // dynamicText("PT. Ivonesia Solusi Data", fontSize: 12, color: kContentColorDarkTheme),
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                // color: kPrimaryColor.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.all(0),
                              child: Icon(Icons.notifications_none_rounded, size: 36, color: kContentColorDarkTheme),
                            ),
                            Positioned(
                              right: 3,
                              top: 0,
                              child: CircleAvatar(
                                backgroundColor: Colors.redAccent,
                                radius: 5,
                              ),
                            )
                          ]
                        ),
                      ],
                      
                    ),
                    // SizedBox(height: 20),
                    // Row(
                    //   children: [
                    //     CircleAvatar(
                    //       backgroundImage: NetworkImage('https://via.placeholder.com/150'),
                    //       // radius: 10,
                    //     ),
                        
                    //     SizedBox(width: kDefaultPadding),
                    //     Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //       children: [
                    //         dynamicText("Hi, Syakila", fontSize: 30, color: kContentColorDarkTheme, fontWeight: FontWeight.w600),
                    //         dynamicText("Full-Stack Developer (PT. Ivonesia Solusi Data)", fontSize: 12, color: kContentColorDarkTheme),
                    //         // dynamicText("PT. Ivonesia Solusi Data", fontSize: 12, color: kContentColorDarkTheme),
                    //       ],
                    //     ),
                    //   ],
                      
                    // ),
                    
                    SizedBox(height: 40),
                    // Container(
                    //   decoration: BoxDecoration(
                    //     color: Colors.blueAccent,
                    //     borderRadius: BorderRadius.circular(100),
                    //   ),
                    //   padding: EdgeInsets.only(left: 24, right: 24, top: 40, bottom: 40),
                    //   child: dynamicText("80%", fontSize: 48, color: Colors.white),
                    // ),

                    CircleAvatar(
                      radius: 100,
                      // backgroundColor: Color(0xffFDCF09),
                      backgroundColor: Colors.blueAccent[200],
                      child: CircleAvatar(
                        radius: 80,
                        backgroundColor: Colors.blueAccent[100],
                        // backgroundImage: AssetImage('images/batman.jpg'),
                        child: Padding(
                          child: dynamicText("89%", fontSize: 46, color: Colors.white),
                          padding: EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding),
                        )
                        
                      ),
                    )
                  ],
                ),
              ),
            ),

            Container(
              // height: MediaQuery.of(context).size.height - 150,
              // color: kPrimaryColor.withOpacity(0.9),
              padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      defaultMenuCard(
                        Container(
                          // color: Colors.orangeAccent,
                          width: 60,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FaIcon(FontAwesomeIcons.mapMarkerAlt, size: 26, color: kPrimaryColor),
                              // Icon(Icons.pin_drop_outlined, size: 30, color: kPrimaryColor),
                              SizedBox(height: 5),
                              dynamicText("Attendance", fontSize: 10, textAlign: TextAlign.center),
                              // SizedBox(width: 4),
                            ],
                          ),
                        )
                      ),
                      defaultMenuCard(
                        Container(
                          // color: Colors.orangeAccent,
                          width: 60,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // FaIcon(FontAwesomeIcons.suitcaseRolling, size: 26, color: kPrimaryColor),
                              FaIcon(FontAwesomeIcons.hotTub, size: 26, color: kPrimaryColor),
                              SizedBox(height: 5),
                              dynamicText("Leave", fontSize: 10),
                              // SizedBox(width: 4),
                            ],
                          ),
                        )
                      ),
                      defaultMenuCard(
                        Container(
                          // color: Colors.orangeAccent,
                          width: 60,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FaIcon(FontAwesomeIcons.amazonPay, size: 26, color: kPrimaryColor),
                              // Icon(Icons.attach_money_outlined, size: 30, color: kPrimaryColor),
                              SizedBox(height: 5),
                              dynamicText("Reimburse", fontSize: 10),
                              // SizedBox(width: 4),
                            ],
                          ),
                        )
                      ),
                      defaultMenuCard(
                        Container(
                          // color: Colors.orangeAccent,
                          width: 60,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FaIcon(FontAwesomeIcons.businessTime, size: 26, color: kPrimaryColor),
                              // Icon(Icons.timer_off_outlined, size: 30, color: kPrimaryColor),
                              SizedBox(height: 5),
                              dynamicText("Time Off", fontSize: 10),
                              // SizedBox(width: 4),
                            ],
                          ),
                        )
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      defaultMenuCard(
                        Container(
                          // color: Colors.orangeAccent,
                          width: 60,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // FaIcon(FontAwesomeIcons.fileInvoiceDollar, size: 26, color: kPrimaryColor),
                              FaIcon(FontAwesomeIcons.moneyCheckAlt, size: 26, color: kPrimaryColor),
                              // Icon(Icons.payment_outlined, size: 30, color: kPrimaryColor),
                              SizedBox(height: 5),
                              dynamicText("Pay Slip", fontSize: 10, textAlign: TextAlign.center),
                              // SizedBox(width: 4),
                            ],
                          ),
                        )
                      ),
                      Stack(
                        children: [
                          defaultMenuCard(
                            Container(
                              // color: Colors.orangeAccent,
                              width: 60,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  FaIcon(FontAwesomeIcons.calendarAlt, size: 26, color: kPrimaryColor),
                                  // Icon(Icons.calendar_today_outlined, size: 30, color: kPrimaryColor),
                                  SizedBox(height: 5),
                                  dynamicText("Calendar", fontSize: 10),
                                  // SizedBox(width: 4),
                                ],
                              ),
                            )
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: CircleAvatar(
                              backgroundColor: Colors.redAccent,
                              radius: 10,
                              child: dynamicText("23", color: kContentColorDarkTheme, fontSize: 10, fontWeight: FontWeight.w600)
                            ),
                          )
                        ]
                      ),
                      defaultMenuCard(
                        Container(
                          // color: Colors.orangeAccent,
                          width: 60,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FaIcon(FontAwesomeIcons.handshake, size: 26, color: kPrimaryColor),
                              // Icon(Icons.file_present, size: 30, color: kPrimaryColor),
                              SizedBox(height: 5),
                              dynamicText("Approval", fontSize: 10),
                              // SizedBox(width: 4),
                            ],
                          ),
                        )
                      ),
                      defaultMenuCard(
                        Container(
                          // color: Colors.orangeAccent,
                          width: 60,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FaIcon(FontAwesomeIcons.chartLine, size: 26, color: kPrimaryColor),
                              // Icon(Icons.bar_chart, size: 30, color: kPrimaryColor),
                              SizedBox(height: 5),
                              dynamicText("KPI", fontSize: 10),
                              // SizedBox(width: 4),
                            ],
                          ),
                        )
                      ),
                    ],
                  ),
                ]
              )
            ),

            Container(
              // height: MediaQuery.of(context).size.height - 150,
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
              child: Column(
                children: [
                  defaultCard(
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 14.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 4),
                                child: Row(
                                  // mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    dynamicText("9 ", fontSize: 40, fontWeight: FontWeight.w600, color: Colors.blueAccent),
                                    dynamicText("/12", fontSize: 20, fontWeight: FontWeight.w600, color: Colors.blueAccent),
                                  ],
                                )
                              ),
                              
                              LinearPercentIndicator(
                                width: 100.0,
                                lineHeight: 12.0,
                                percent: 0.81,
                                backgroundColor: Colors.grey[300],
                                progressColor: Colors.blueAccent,
                              ),
                              SizedBox(height: 10,)
                            ],
                          ),
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 4),
                                  child: dynamicText("Remaining Leave", fontSize: 18, fontWeight: FontWeight.w600),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                                  child: Icon(Icons.info_outline, color: Colors.black45, size: 20,),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.all(0),
                              width: 200,
                              child: dynamicText("Improve your score by following the recomendations below ", fontSize: 13, color: Colors.black45),
                            ),
                          ],
                        ),
                        // dynamicText("tes")
                      ],
                    ),
                  ),

                  SizedBox(height: 10),

                  // Container(
                  //   width: double.infinity,
                  //   height: 200,
                  //   padding: EdgeInsets.only(left: 0, bottom: 20, top: 0, right: 0),
                  //   child: HorizontalBarLabelChart(
                  //     _createSampleHbarData(),
                  //     animate: true,
                  //   )
                  // ),

                  defaultCard(
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  padding: EdgeInsets.all(8),
                                  child: FaIcon(FontAwesomeIcons.bullhorn, size: 14, color: kContentColorDarkTheme)
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10, bottom: 4),
                                  child: dynamicText("Announcement from head office", fontSize: 14, fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),

                            Row(
                              children: [
                                defaultChip("+3"),
                                // Padding(
                                //   padding: EdgeInsets.only(left: 4, bottom: 4),
                                //   child: Icon(Icons.more_vert_outlined),
                                // ),
                              ],
                            ),

                          ],
                        ),
                        
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top:20, bottom: 0),
                              child: dynamicText("Holiday info in 2021", fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 20),
                              child: dynamicText("Decision on national holidays and collective leave can", fontSize: 14, color: Colors.black45),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  CircularPercentIndicator(
                                    radius: 80.0,
                                    lineWidth: 10.0,
                                    animation: true,
                                    percent: 0.1,
                                    center: dynamicText("12", fontSize: 18, fontWeight: FontWeight.w600),
                                    footer: Padding(padding: EdgeInsets.only(top: 10), child: dynamicText("Work Day", fontSize: 12, fontWeight: FontWeight.w600)),
                                    circularStrokeCap: CircularStrokeCap.round,
                                    progressColor: Colors.green,
                                  ),
                                  CircularPercentIndicator(
                                    radius: 80.0,
                                    lineWidth: 10.0,
                                    animation: true,
                                    percent: 0.7,
                                    center: dynamicText("75", fontSize: 18, fontWeight: FontWeight.w600),
                                    footer: Padding(padding: EdgeInsets.only(top: 10), child: dynamicText("Public Holidays", fontSize: 12, fontWeight: FontWeight.w600)),
                                    circularStrokeCap: CircularStrokeCap.round,
                                    progressColor: Colors.red,
                                  ),
                                  CircularPercentIndicator(
                                    radius: 80.0,
                                    lineWidth: 10.0,
                                    animation: true,
                                    percent: 0.4,
                                    center: dynamicText("41", fontSize: 18, fontWeight: FontWeight.w600),
                                    footer: Padding(padding: EdgeInsets.only(top: 10), child: dynamicText("Leave Together", fontSize: 12, fontWeight: FontWeight.w600)),
                                    circularStrokeCap: CircularStrokeCap.round,
                                    progressColor: Colors.cyan,
                                  ),
                                  
                                ],
                              ),
                            ),
                            // Padding(
                            //   padding: EdgeInsets.only(top: 10),
                            //   child: defaultFlatButton(
                            //     "View More",
                            //     () {}
                            //   ),
                            // ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 0),
                                  child: defaultFlatButton(
                                    "View More",
                                    () {}
                                  ),
                                ),
                                // Padding(
                                //   padding: EdgeInsets.only(top: 10),
                                //   child: defaultRaisedButton(
                                //     "Apply",
                                //     () {}
                                //   )
                                  
                                // ),

                              ],
                            ),
                          ],
                        ),
                        // dynamicText("tes")
                        Divider(height: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10, bottom: 0),
                              child: dynamicText("Whos's Off Today", fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 20),
                              child: dynamicText("Anyone on leave today", fontSize: 14, color: Colors.black45),
                            ),
                            Container(
                              height: 100,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  defaultCircleImageThumb('https://picsum.photos/200?image=1', 'Moch. Subhan'),
                                  defaultCircleImageThumb('https://picsum.photos/200?image=2', 'Syakila Ilham F'),
                                  defaultCircleImageThumb('https://picsum.photos/200?image=3', 'Bista Indah Kurnia'),
                                  defaultCircleImageThumb('https://picsum.photos/200?image=4', 'Abdul Rohman'),
                                  defaultCircleImageThumb('https://picsum.photos/200?image=5', 'Moses Alexander G'),
                                  defaultCircleImageThumb('https://picsum.photos/200?image=6', 'Jose Mourinho'),
                                  defaultCircleImageThumb('https://picsum.photos/200?image=7', 'Andrea Pirlo'),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 0),
                                  child: defaultFlatButton(
                                    "View More",
                                    () {}
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(height: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10, bottom: 0),
                              child: dynamicText("Whos's Birthday Today", fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 20),
                              child: dynamicText("Anyone birthday today", fontSize: 14, color: Colors.black45),
                            ),
                            Container(
                              height: 100,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  defaultCircleImageThumb('https://picsum.photos/200?image=11', 'Abdul Rohman'),
                                  defaultCircleImageThumb('https://picsum.photos/200?image=12', 'Moses Alexander G'),
                                  defaultCircleImageThumb('https://picsum.photos/200?image=13', 'Jose Mourinho'),
                                  defaultCircleImageThumb('https://picsum.photos/200?image=14', 'Andrea Pirlo'),
                                  
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 0),
                                  child: defaultFlatButton(
                                    "View More",
                                    () {}
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class MainChart extends StatelessWidget {
//   final List<charts.Series> seriesList;
//   final bool animate;
//   MainChart(this.seriesList, {this.animate});

//   @override
//   Widget build(BuildContext context) {
//     return new charts.LineChart(
//       seriesList,
//       defaultRenderer: new charts.LineRendererConfig(
//         includeArea: true, 
//         stacked: true
//       ),
//       animate: animate
//     );
//   }
// }

// class GaugeChart extends StatelessWidget {
//   final List<charts.Series> seriesList;
//   final bool animate;
//   final double pi = 3.14;

//   GaugeChart(this.seriesList, {this.animate});

//   @override
//   Widget build(BuildContext context) {
//     return new charts.PieChart(
//       seriesList,
//       animate: animate,
//       defaultRenderer: new charts.ArcRendererConfig(
//         arcWidth: 100, 
//         startAngle: 4 / 5 * pi, 
//         arcLength: 7 / 5 * pi
//       )
//     );
//   }
// }

// class HorizontalBarLabelChart extends StatelessWidget {
//   final List<charts.Series> seriesList;
//   final bool animate;

//   HorizontalBarLabelChart(this.seriesList, {this.animate});

//   @override
//   Widget build(BuildContext context) {
//     return new charts.BarChart(
//       seriesList,
//       animate: animate,
//       vertical: false,
//       // Set a bar label decorator.
//       // Example configuring different styles for inside/outside:
//       //       barRendererDecorator: new charts.BarLabelDecorator(
//       //          insideLabelStyleSpec: new charts.TextStyleSpec(...),
//       //          outsideLabelStyleSpec: new charts.TextStyleSpec(...)),
//       barRendererDecorator: new charts.BarLabelDecorator<String>(),
//       // Hide domain axis.
//       domainAxis: new charts.OrdinalAxisSpec(renderSpec: new charts.NoneRenderSpec()),
//     );
//   }
// }