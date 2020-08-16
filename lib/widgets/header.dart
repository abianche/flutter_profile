import 'package:flutter/material.dart';
import 'package:flutter_profile/data/constants.dart';
import 'package:flutter_profile/models/settings.model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        Constants.fullName.toUpperCase(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
        ),
      ),
      actions: <Widget>[
        Consumer<SettingsModel>(
          builder: (context, settings, _) => IconButton(
            icon: FaIcon(settings.darkMode
                ? FontAwesomeIcons.sun
                : FontAwesomeIcons.moon),
            onPressed: settings.toggleDarkMode,
            tooltip: 'Switch to ${settings.darkMode ? 'light' : 'dark'} theme',
          ),
        )
      ],
      elevation: 0.0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
