import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:gap/gap.dart';

import 'package:find_your_cluster/constants/routing_constants.dart';
import 'package:find_your_cluster/styles/button_style.dart';
import 'package:find_your_cluster/styles/text_field_decorator.dart';
import 'package:find_your_cluster/styles/text_style.dart';

class OnboardUser extends StatefulWidget {
  static const String routeName = "/onBoardingRoute";

  const OnboardUser({super.key});

  @override
  State<OnboardUser> createState() => _OnboardUserState();
}

class _OnboardUserState extends State<OnboardUser> {
  final _formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  final bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double fontSize = width / 20;
    return Scaffold(
        key: scaffoldKey,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: const Icon(Icons.arrow_back_ios)),
                    Expanded(
                      child: Text(
                        'Sign up',
                        style: headingStyle(fontSize: fontSize),
                      ),
                    ),
                  ],
                ),
                const Gap(20),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextFormField(
                        decoration: textFieldDecorator(label: 'Enter name'),
                        keyboardType: TextInputType.name,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                      ),
                      const Gap(10),
                      TextFormField(
                        decoration: textFieldDecorator(label: 'Enter email'),
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                      ),
                      const Gap(10),
                      TextFormField(
                        decoration: textFieldDecorator(label: 'Enter Password'),
                        keyboardType: TextInputType.visiblePassword,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushNamed(context, homeScreenRoute);
                      }
                    },
                    style: buttonStyle(),
                    child: Text('Submit', style: buttonTextStyle()),
                  ),
                ),
                const Divider(
                  color: Color(0xff0d406a),
                  indent: 100,
                  thickness: 2,
                  endIndent: 100,
                ),
                const Gap(20),
                Text(
                  'Or sign up with',
                  style: bodyStyle(),
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlutterSocialButton(
                      onTap: () {},
                      buttonType: ButtonType.google,
                      mini: true,
                    ),
                    const Gap(20),
                    FlutterSocialButton(
                      onTap: () {
                        scaffoldKey.currentState!.showBottomSheet((
                          BuildContext context, {
                          isDismissible =
                              true, // Enable tapping outside to dismiss
                          enableDrag = true,
                        }
                            // Enable dragging to dismiss
                            ) {
                          return SizedBox(
                            height: height * 0.7,
                            width: width * 0.98,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Apple sign in is not available on Android',
                                  style: subHeadingStyle(),
                                ),
                                const Gap(20),
                                Text(
                                  "fuck Apple I aint paying their developer fees for adding signin feature get some from google",
                                  style: headingStyle()
                                      .copyWith(color: Colors.greenAccent),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  style: buttonStyle(),
                                  child: Text(
                                    'Ok',
                                    style: buttonTextStyle(),
                                  ),
                                ),
                              ],
                            ),
                          );
                        });
                      },
                      buttonType: ButtonType.apple,
                      mini: true,
                    ),
                    const Gap(20),
                    FlutterSocialButton(
                      onTap: () {

                      },
                      buttonType: ButtonType.github,
                      mini: true,
                    ),
                  ],
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: bodyStyle(),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, loginRoute);
                      },
                      child: Text(
                        'Login',
                        style: bodyStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
