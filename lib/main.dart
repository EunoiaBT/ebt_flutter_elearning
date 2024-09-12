import 'package:ebt_flutter_elearning/core/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eLearning App',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: EbtAppTheme.darkTheme,
      theme: EbtAppTheme.lightTheme,
      builder: EasyLoading.init(),
      home: Scaffold(
        body: Center(
          child: Text(
            'eLearning Platform',
            style: TextStyle(fontFamily: 'Roboto', fontSize: 30),
          ),
        ),
      ),
    );
  }
}
