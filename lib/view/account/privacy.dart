import 'package:flutter/material.dart';
import 'package:hris/utils/constant.dart';
import 'package:hris/utils/widget-model.dart';

class Privacy extends StatefulWidget {
  @override
  _PrivacyState createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
          child: defaultCard( 
            Column(
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/marketing.jpg",
                    height: 200,
                    // fit: BoxFit.fitWidth,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 18),
                  child: dynamicText(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Excepteur sint occaecat cupidatat non proident",
                    fontWeight: FontWeight.w600,
                    fontSize: 18
                  )
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 18),
                  child: dynamicText(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Excepteur sint occaecat cupidatat non proident",
                    fontSize: 12
                  )
                ),
                Divider(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 18),
                  child: dynamicText(
                    "Effective page on Oct 22, 2020",
                    fontSize: 12
                  )
                ),
                Divider(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 4, top: 10),
                              child: dynamicText("Privacy checkup", fontWeight: FontWeight.w600),
                            ),
                            Container(
                              width: 220,
                              padding: EdgeInsets.only(bottom: 10),
                              child: dynamicText("Looking to change your privacy setting?", fontSize: 12, color: Colors.black45),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: CircleAvatar(
                            backgroundColor: Colors.green[600],
                            child: Icon(Icons.verified_user, color: kContentColorLightTheme, size: 30,),
                            radius: 24,
                          ),
                        )
                      ],
                    ),
                    Divider(height: 20),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: dynamicText("Take the Privacy Checkup", fontWeight: FontWeight.w600, color: Colors.blueAccent, fontSize: 13)
                    )
                  ],
                ),
              ],
            ),
          )
        ),
      ),
      
    );
  }
}