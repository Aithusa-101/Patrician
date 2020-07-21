import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Navigation.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Salone Jobs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Navigation(),
    );
  }
}
