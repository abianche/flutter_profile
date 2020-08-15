import 'package:flutter/material.dart';
import 'package:flutter_profile/data/constants.dart';
import 'package:flutter_profile/home_tabs/profile_tab.dart';
import 'package:flutter_profile/models/settings.model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const List<Widget> tabs = <Widget>[
    ProfileTab(),
    ProfileTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return const HomePageWeb(tabs: tabs);
  }
}

class HomePageMobile extends StatefulWidget {
  const HomePageMobile({
    Key key,
    @required this.tabs,
  }) : super(key: key);

  final List<Widget> tabs;

  @override
  _HomePageMobileState createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Constants.fullName.toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        actions: <Widget>[
          Consumer<SettingsModel>(
            builder: (context, settings, _) => IconButton(
              icon: FaIcon(settings.darkMode ? FontAwesomeIcons.sun : FontAwesomeIcons.moon),
              onPressed: settings.toggleDarkMode,
              tooltip: 'Switch to ${settings.darkMode ? 'light' : 'dark'} theme',
            ),
          )
        ],
        elevation: 0.0,
      ),
      body: Center(
        child: widget.tabs.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.personBooth),
            title: Text('About'),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.projectDiagram),
            title: Text('Projects'),
          )
        ],
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        elevation: 0.0,
      ),
    );
  }
}

class HomePageWeb extends StatefulWidget {
  const HomePageWeb({
    Key key,
    @required this.tabs,
  }) : super(key: key);

  final List<Widget> tabs;

  @override
  _HomePageWebState createState() => _HomePageWebState();
}

class _HomePageWebState extends State<HomePageWeb> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Constants.fullName.toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        actions: <Widget>[
          Consumer<SettingsModel>(
            builder: (context, settings, _) => IconButton(
              icon: FaIcon(settings.darkMode ? FontAwesomeIcons.sun : FontAwesomeIcons.moon),
              onPressed: settings.toggleDarkMode,
              tooltip: 'Switch to ${settings.darkMode ? 'light' : 'dark'} theme',
            ),
          )
        ],
        elevation: 0.0,
      ),
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: _currentIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
            labelType: NavigationRailLabelType.all,
            destinations: const <NavigationRailDestination>[
              NavigationRailDestination(
                icon: FaIcon(FontAwesomeIcons.personBooth),
                selectedIcon: Icon(Icons.favorite),
                label: Text('About'),
              ),
              NavigationRailDestination(
                icon: FaIcon(FontAwesomeIcons.projectDiagram),
                selectedIcon: Icon(Icons.book),
                label: Text('Projects'),
              ),
            ],
          ),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(child: Center(child: widget.tabs.elementAt(_currentIndex))),
        ],
      ),
    );
  }
}
