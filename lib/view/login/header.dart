import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:hris/utils/constant.dart';
import 'package:hris/utils/logo.dart';
import 'package:hris/utils/widget-model.dart';
import 'package:hris/utils/fade-slide-transition.dart';


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
            color: kPrimaryColor,
            size: 58.0,
          ),
          const SizedBox(height: kSpaceM),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 0.0,
            child: dynamicText("Sign In", fontWeight: FontWeight.bold, fontSize: 32)
          ),
          const SizedBox(height: kSpaceS),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 16.0,
            child: dynamicText('When you are signed in, all of the services you use work together seamlessly to offer help with everyday tasks', fontSize: 16)
          ),
        ],
      ),
    );
  }
}