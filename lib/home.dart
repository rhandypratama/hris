import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:analytic/campaign/screen/campaign.dart';
// import 'package:analytic/overview/screen/overview.dart';
// import 'package:analytic/setting/screen/option.dart';
// import 'package:analytic/recomendation/screen/recomendation.dart';
// import 'package:analytic/utils/widget-model.dart';
import 'package:hris/utils/widget-model.dart';
import 'package:hris/view/account/index.dart';
import 'package:hris/view/dashboard/overview.dart';
import 'package:hris/view/employees/employee.dart';
import 'package:hris/view/knowledge/knowledge.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  List<Widget> _children = [
    Overview(),
    Knowledge(),
    Employee(),
    Account(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          bottomBarIcons(icon: FaIcon(FontAwesomeIcons.chartArea), title: 'Overview'),
          bottomBarIcons(icon: FaIcon(FontAwesomeIcons.award), title: 'Knowledge'),
          bottomBarIcons(icon: FaIcon(FontAwesomeIcons.addressCard), title: 'Employees'),
          bottomBarIcons(icon: FaIcon(FontAwesomeIcons.houseUser), title: 'Account'),
        ],
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.black54,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedFontSize: 12,
        selectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        elevation: 10.0,
      ),
    );
  }
}