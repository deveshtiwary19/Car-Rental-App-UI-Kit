import 'package:car_app_uikit/screens/CarsOverView.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

//Following is just a class to define the base of our app as MaterialApp
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ok Cars',
      //Setting the theme
      theme: ThemeData(primaryColor: Colors.white, accentColor: Colors.blue),
      home: CarsOverViewScreen(),
    );
  }
}
