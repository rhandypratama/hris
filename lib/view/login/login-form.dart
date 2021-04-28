import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:hris/utils/constant.dart';
import 'package:hris/utils/custom-button.dart';
import 'package:hris/utils/custom-input-field.dart';
import 'package:hris/utils/custom-password-field.dart';
import 'package:hris/utils/widget-model.dart';
import 'package:hris/utils/fade-slide-transition.dart';
import 'package:hris/home.dart';
import 'package:hris/view/register/register.dart';

class LoginForm extends StatelessWidget {
  final Animation<double> animation;

  const LoginForm({@required this.animation}) : assert(animation != null);

  // AnimationController _rippleAnimationController;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    var space = height > 650 ? kSpaceM : kSpaceS;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPaddingL),
      child: Column(
        children: <Widget>[
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 0.0,
            child: CustomInputField(
              label: 'Email',
              prefixIcon: Icons.mail_outline,
              obscureText: true,
            ),
          ),
          SizedBox(height: space),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: space,
            child: CustomPasswordField(
              label: 'Password',
              prefixIcon: Icons.lock_outline,
              obscureText: true,
            ),
          ),
          SizedBox(height: space),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 2 * space,
            child: GestureDetector(
              child: Align(
                alignment: Alignment.centerRight,
                child: dynamicText("Forgot Password", fontSize: 14, color: kPrimaryColor),
              ),
              onTap: () async {
                // navigationManager(context, ForgotPassword(screenHeight: MediaQuery.of(context).size.height), isPushReplaced: false);
              },
            )
          ),
          SizedBox(height: space),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 2 * space,
            child: CustomButton(
              color: kPrimaryColor,
              textColor: kContentColorDarkTheme,
              text: 'Login to continue',
              onPressed: () {
                navigationManager(context, Home(), isPushReplaced: false);
              },
            ),
          ),
          // SizedBox(height: space),
          // FadeSlideTransition(
          //   animation: animation,
          //   additionalOffset: 3 * space,
          //   child: CustomButton(
          //     color: kContentColorDarkTheme,
          //     textColor: kContentColorDarkTheme.withOpacity(0.5),
          //     text: 'Continue with Google',
          //     // image: Image(
          //     //   image: AssetImage(kGoogleLogoPath),
          //     //   height: 48.0,
          //     // ),
          //     onPressed: () {
          //       // navigationManager(context, Home(), isPushReplaced: false);
          //     },
          //   ),
          // ),
          SizedBox(height: space),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeSlideTransition(
                animation: animation,
                additionalOffset: 4 * space,
                child: dynamicText("Do you have an account?", fontSize: 14)
              ),
              SizedBox(width: 4),
              FadeSlideTransition(
                animation: animation,
                additionalOffset: 4 * space,
                child: GestureDetector(
                  child: dynamicText("Create Account", fontSize: 14, color: kPrimaryColor),
                  onTap: () async {
                    navigationManager(context, Register(screenHeight: MediaQuery.of(context).size.height), isPushReplaced: false);
                  },
                )
              ),
            ],
          )
          
        ],
      ),
    );
  }
}