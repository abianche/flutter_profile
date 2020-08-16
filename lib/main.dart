import 'package:flutter/material.dart';
import 'package:flutter_profile/data/constants.dart';
import 'package:flutter_profile/home_page.dart';
import 'package:flutter_profile/models/settings.model.dart';
import 'package:flutter_profile/repository.dart';
import 'package:flutter_profile/theme.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) =>
          SettingsModel(repository: Repository())..loadSettings(),
      child: Consumer<SettingsModel>(
        builder: (BuildContext context, settings, _) => MaterialApp(
          builder: (context, child) {
            return ScrollConfiguration(
              behavior: MyBehavior(),
              child: child,
            );
          },
          debugShowCheckedModeBanner: false,
          title: Constants.fullName,
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: settings.darkMode ? ThemeMode.dark : ThemeMode.light,
          home: const HomePage(),
        ),
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
