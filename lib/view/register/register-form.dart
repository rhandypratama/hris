import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:hris/home.dart';
import 'package:hris/utils/constant.dart';
import 'package:hris/utils/custom-button.dart';
import 'package:hris/utils/custom-input-field.dart';
import 'package:hris/utils/custom-password-field.dart';
import 'package:hris/utils/fade-slide-transition.dart';
import 'package:hris/utils/widget-model.dart';
import 'package:hris/view/login/login.dart';

class RegisterForm extends StatefulWidget {
  final Animation<double> animation;

  const RegisterForm({@required this.animation}) : assert(animation != null);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    // var height = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    var space = height > 650 ? kSpaceM : kSpaceS;
    bool valCheck = true;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPaddingL),
      child: Column(
        children: <Widget>[
          FadeSlideTransition(
            animation: widget.animation,
            additionalOffset: 0.0,
            child: CustomInputField(
              label: 'Username',
              prefixIcon: Icons.person_outline,
              obscureText: true,
            ),
          ),
          SizedBox(height: space),
          FadeSlideTransition(
            animation: widget.animation,
            additionalOffset: space,
            child: CustomInputField(
              label: 'Email',
              prefixIcon: Icons.mail_outline,
              obscureText: true,
            ),
          ),
          SizedBox(height: space),
          // FadeSlideTransition(
          //   animation: widget.animation,
          //   additionalOffset: 2 * space,
          //   child: CustomInputField(
          //     label: 'Date of Birth',
          //     prefixIcon: Icons.date_range_outlined,
          //     obscureText: true,
          //   ),
          // ),
          FadeSlideTransition(
            animation: widget.animation,
            additionalOffset: 3 * space,
            child: CustomPasswordField(
              label: 'Password',
              prefixIcon: Icons.lock_outline,
              obscureText: true,
            ),
          ),
          SizedBox(height: space),
          FadeSlideTransition(
            animation: widget.animation,
            additionalOffset: 3 * space,
            child: CustomPasswordField(
              label: 'Password Confirmation',
              prefixIcon: Icons.lock_outline,
              obscureText: true,
            ),
          ),
          FadeSlideTransition(
            animation: widget.animation,
            additionalOffset: 4 * space,
            child: Row(
              children: [
                Checkbox(
                  // tristate: true,
                  value: valCheck,
                  // activeColor: Colors.green,
                  onChanged: (newVal) {
                    setState(() {
                      valCheck = newVal;
                    });
                    print(valCheck);
                  },

                ),
                dynamicText('I agree to terms condition and privacy policy', fontSize: 14)
              ],
            )
          ),
          SizedBox(height: space),
          // Spacer(),

          FadeSlideTransition(
            animation: widget.animation,
            additionalOffset: 5 * space,
            child: CustomButton(
              color: kBlue,
              textColor: kWhite,
              text: 'Register Now',
              onPressed: () {
                navigationManager(context, Home(), isPushReplaced: false);
              },
            ),
          ),
          SizedBox(height: space),
          
          // FadeSlideTransition(
          //   animation: animation,
          //   additionalOffset: 3 * space,
          //   child: CustomButton(
          //     color: kWhite,
          //     textColor: kBlack.withOpacity(0.5),
          //     text: 'Continue with Google',
          //     // image: SvgPicture.asset(
          //     //   kGoogleLogoPath,
          //     //   placeholderBuilder: (context) => CircularProgressIndicator(),
          //     //   height: 48,
          //     //   color: Colors.grey,
                
          //     // ),
          //     image: Image(
          //       image: AssetImage(kGoogleLogoPath),
          //       height: 48.0,
          //     ),
          //     onPressed: () {
          //       navigationManager(context, Home(), isPushReplaced: false);
          //     },
          //   ),
          // ),
          // SizedBox(height: space),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeSlideTransition(
                animation: widget.animation,
                additionalOffset: 4 * space,
                child: dynamicText("Already have an account?", fontSize: 14)
              ),
              SizedBox(width: 4),
              FadeSlideTransition(
                animation: widget.animation,
                additionalOffset: 4 * space,
                child: GestureDetector(
                  child: dynamicText("Sign In", fontSize: 14, color: kBlue),
                  onTap: () {
                    navigationManager(context, Login(screenHeight: MediaQuery.of(context).size.height), isPushReplaced: false);
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