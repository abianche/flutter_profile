import 'package:flutter/material.dart';
import 'package:flutter_profile/home_tabs/profile_tab.dart';
import 'package:flutter_profile/home_tabs/projects_tab.dart';
import 'package:flutter_profile/theme.dart';
import 'package:flutter_profile/widgets/header.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

final footerButtons = <Widget>[
  const Text('Made with '),
  const Icon(
    FontAwesomeIcons.solidHeart,
    size: 16.0,
    color: Palette.sunburntCyclops,
  ),
  const Text(' in Flutter'),
  InkWell(
    hoverColor: Colors.transparent,
    onTap: () => launch(
        'https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=LCVGA76B4AH5U&currency_code=EUR&source=url'),
    child: Tooltip(
      message: 'PayPal - The safer, easier way to pay online!',
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(90)),
          color: Palette.sunglow,
        ),
        padding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
        child: const Text(
          'Donate',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    ),
  ),
  const Text('All rights reserved'),
  Text('© ${DateTime.now().year}'),
];

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const List<Widget> tabs = <Widget>[
    ProfileTab(),
    ProjectsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (_) => const HomePageWeb(tabs: tabs),
      mobile: (_) => const HomePageMobile(tabs: tabs),
    );
    // return const HomePageWeb(tabs: tabs);
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
      appBar: const Header(),
      body: Center(
        child: widget.tabs.elementAt(_currentIndex),
      ),
      persistentFooterButtons: footerButtons,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.personBooth),
            title: Text('Profile'),
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
      appBar: const Header(),
      persistentFooterButtons: footerButtons,
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
                label: Text('Profile'),
              ),
              NavigationRailDestination(
                icon: FaIcon(FontAwesomeIcons.projectDiagram),
                label: Text('Projects'),
              ),
            ],
          ),
          Expanded(
            child: Center(
              child: widget.tabs.elementAt(_currentIndex),
            ),
          ),
        ],
      ),
    );
  }
}
