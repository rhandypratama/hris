import 'package:flutter/material.dart';
import 'package:hris/utils/widget-model.dart';
import 'package:hris/view/account/help.dart';

import 'package:hris/view/account/privacy.dart';
import 'package:hris/view/account/setting.dart';
import 'package:hris/view/account/term.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(110),
            child: Container(
              child: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                automaticallyImplyLeading: false,
                title: Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      dynamicText("More Option", fontWeight: FontWeight.w600),
                      dynamicText("Lorem ipsum dolor ismet", fontSize: 12, color: Colors.black45),
                    ],
                  ),
                ),
                bottom: TabBar(
                  labelColor: Colors.black,
                  isScrollable: true,
                  indicatorWeight: 2,
                  indicatorSize: TabBarIndicatorSize.label,
                  unselectedLabelStyle: TextStyle(color: Colors.black12),
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  tabs: [
                    Tab(
                      child: Container(
                        // width: 290,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: dynamicText("Setting", fontSize: 12)
                            )
                          ]
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        // width: 70,
                        child: dynamicText("Help", fontSize: 12)
                      ),
                    ),
                    Tab(
                      child: Container(
                        child: dynamicText("Terms Condition", fontSize: 12)
                      ),
                    ),
                    Tab(
                      child: Container(
                        child: dynamicText("Privacy Policy", fontSize: 12)
                      ),
                    ),
                    
                              
                  ]
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Setting(),
              Help(),
              Term(),
              Privacy()
            ]
          ),
          
        ),
      ),
    );
  }
}