import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:hris/theme.dart';
import 'package:hris/view/login/login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('assets/fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var height = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      //   // textTheme: GoogleFonts.alegreyaTextTheme(
      //   //   Theme.of(context).textTheme,
      //   // ),
      // ),
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      // home: Overview(),
      home: Builder(
        builder: (BuildContext context) {
          var screenHeight = MediaQuery.of(context).size.height;
          return Login(screenHeight: screenHeight);
          // return Onboarding(screenHeight: screenHeight);
          // return Home();
          // return Login(screenHeight: height);
        },
      ),
    
    );
  }
}