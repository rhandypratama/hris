import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:hris/utils/constant.dart';
import 'package:hris/view/register/header.dart';
import 'package:hris/view/register/register-form.dart';


class Register extends StatefulWidget {
  final double screenHeight;

  const Register({@required this.screenHeight}) : assert(screenHeight != null);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _headerTextAnimation;
  Animation<double> _formElementAnimation;
  Animation<double> _whiteTopClipperAnimation;
  Animation<double> _blueTopClipperAnimation;
  Animation<double> _greyTopClipperAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: kLoginAnimationDuration,
    );

    var fadeSlideTween = Tween<double>(begin: 0.0, end: 1.0);
    _headerTextAnimation = fadeSlideTween.animate(CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.0,
        0.6,
        curve: Curves.easeInOut,
      ),
    ));
    _formElementAnimation = fadeSlideTween.animate(CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.7,
        1.0,
        curve: Curves.easeInOut,
      ),
    ));

    // var clipperOffsetTween = Tween<double>(
    //   begin: widget.screenHeight,
    //   end: 0.0,
    // );
    // _blueTopClipperAnimation = clipperOffsetTween.animate(
    //   CurvedAnimation(
    //     parent: _animationController,
    //     curve: Interval(
    //       0.2,
    //       0.7,
    //       curve: Curves.easeInOut,
    //     ),
    //   ),
    // );
    // _greyTopClipperAnimation = clipperOffsetTween.animate(
    //   CurvedAnimation(
    //     parent: _animationController,
    //     curve: Interval(
    //       0.35,
    //       0.7,
    //       curve: Curves.easeInOut,
    //     ),
    //   ),
    // );
    // _whiteTopClipperAnimation = clipperOffsetTween.animate(
    //   CurvedAnimation(
    //     parent: _animationController,
    //     curve: Interval(
    //       0.5,
    //       0.7,
    //       curve: Curves.easeInOut,
    //     ),
    //   ),
    // );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kWhite,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: kPaddingL),
          child: Column(
            children: <Widget>[
              Header(
                animation: _headerTextAnimation,
              ),
              // Spacer(),
              SizedBox(height: kSpaceL),
              RegisterForm(
                animation: _formElementAnimation,
              ),
            ],
          ),
        ),
      ),
    );
  }
}