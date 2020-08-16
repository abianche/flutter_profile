import 'package:flutter/material.dart';
import 'package:flutter_profile/repository.dart';

class SettingsModel extends ChangeNotifier {
  final Repository repository;
  bool darkMode;

  SettingsModel({
    this.repository,
    this.darkMode = false,
  });

  void toggleDarkMode() {
    darkMode = !darkMode;
    saveSettings(this);
    notifyListeners();
  }

  Future<SettingsModel> loadSettings() async {
    final settings = await repository.loadSettings();
    darkMode = settings.darkMode;
    notifyListeners();
    return settings;
  }

  Future<void> saveSettings(SettingsModel settings) async =>
      repository.saveSettings(settings);

  SettingsModel copyWith({
    Repository repository,
    bool darkMode,
  }) {
    return SettingsModel(
      repository: repository ?? this.repository,
      darkMode: darkMode ?? this.darkMode,
    );
  }

  @override
  String toString() =>
      'SettingsModel(repository: $repository, darkMode: $darkMode)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is SettingsModel &&
        o.repository == repository &&
        o.darkMode == darkMode;
  }

  @override
  int get hashCode => repository.hashCode ^ darkMode.hashCode;
}
