import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hris/utils/constant.dart';
import 'package:hris/utils/fade-slide-transition.dart';
import 'package:hris/utils/logo.dart';
import 'package:hris/utils/widget-model.dart';


class Header extends StatelessWidget {
  final Animation<double> animation;

  const Header({@required this.animation}) : assert(animation != null);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPaddingL),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Logo(
            color: kBlue,
            size: 58.0,
          ),
          SizedBox(height: kSpaceM),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 0.0,
            child: dynamicText("Sign Up", fontWeight: FontWeight.bold, fontSize: 32)
          ),
          SizedBox(height: kSpaceS),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 16.0,
            child: dynamicText('This registration requires an active email to send confirmation of its registration', fontSize: 14)
          ),
        ],
      ),
    );
  }
}