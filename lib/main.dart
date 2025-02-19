import 'package:find_your_cluster/constants/routing_constants.dart';
import 'package:find_your_cluster/screens/login.dart';
import 'package:find_your_cluster/screens/onboard_user.dart';
import 'package:find_your_cluster/screens/user_preferences.dart';
import 'package:find_your_cluster/screens/welcome.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  static final FirebaseAnalytics _analytics = FirebaseAnalytics.instance;
  final FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: _analytics);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Find your cluster',
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.routeName,
      routes: {
        WelcomeScreen.routeName: (context) => const WelcomeScreen(),
        OnboardUser.routeName: (context) => const OnboardUser(),
        UserPreferences.routeName: (context) => const UserPreferences(),
        LoginUser.routeName: (context) => const LoginUser(),
      },
      theme: ThemeData(
        primarySwatch: const MaterialColor(0xff0B121A, <int, Color>{
          50: Color(0xffe2e8ed), //10%
          100: Color(0xffb6c6d2), //20%
          200: Color(0xff86a0b5), //30%
          300: Color(0xff567997), //40%
          400: Color(0xff315d80), //50%
          500: Color(0xff0d406a), //60%
          600: Color(0xff0b3a62), //70%
          700: Color(0xff093257), //80%
          800: Color(0xff072a4d), //90%
          900: Color(0xff031c3c), //100%
        }),
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Satoshi',
      ),
      navigatorKey: navigatorKey,
      navigatorObservers: <NavigatorObserver>[observer],
    );
  }
}
