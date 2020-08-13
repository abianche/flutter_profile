import 'package:flutter/material.dart';

class SettingsModel extends ChangeNotifier {
  bool darkMode;

  void toggleDarkMode() {
    darkMode = !darkMode;
    notifyListeners();
  }

  SettingsModel({
    this.darkMode,
  });

  SettingsModel copyWith({
    bool darkMode,
  }) {
    return SettingsModel(
      darkMode: darkMode ?? this.darkMode,
    );
  }

  SettingsModel.initialState() : darkMode = true;

  @override
  String toString() => 'SettingsModel(darkMode: $darkMode)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is SettingsModel && o.darkMode == darkMode;
  }

  @override
  int get hashCode => darkMode.hashCode;
}
