import 'package:ai_radio/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  runApp(new MaterialApp(
    title: 'Flutter Splashscreen',
      theme: ThemeData(fontFamily: GoogleFonts.poppins().fontFamily),
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
  ));
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 3,
      routeName: "/",
      navigateAfterSeconds: HomePage(),
      image: new Image.asset(
          'assets/loader.gif'),
      backgroundColor: Colors.black,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 250.0,
      onClick: () => print("Flutter AI Radio"),
      loaderColor: Colors.redAccent,
    );
  }
}

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(fontFamily: GoogleFonts.poppins().fontFamily),
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }