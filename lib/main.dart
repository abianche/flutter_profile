import 'package:flutter/material.dart';
import 'package:flutter_profile/data/constants.dart';
import 'package:flutter_profile/home_page.dart';
import 'package:flutter_profile/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.fullName,
      theme: getTheme(),
      home: const HomePage(),
    );
  }
}
