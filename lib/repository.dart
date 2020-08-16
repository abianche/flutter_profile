import 'package:flutter_profile/models/settings.model.dart';

import 'package:shared_preferences/shared_preferences.dart';

class Repository {
  Future<SettingsModel> loadSettings() async {
    final _prefs = await SharedPreferences.getInstance();
    final darkMode = _prefs.getBool('darkMode') ?? true;
    return SettingsModel(darkMode: darkMode);
  }

  Future<void> saveSettings(SettingsModel settings) async {
    final _prefs = await SharedPreferences.getInstance();
    _prefs.setBool('darkMode', settings.darkMode);
  }
}
