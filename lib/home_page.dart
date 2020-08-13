import 'package:flutter/material.dart';
import 'package:flutter_profile/data/constants.dart';
import 'package:flutter_profile/home_tabs/profile_tab.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  static const List<Widget> tabs = <Widget>[
    ProfileTab(),
    ProfileTab(),
  ];

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
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.moon),
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: tabs.elementAt(_currentIndex),
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
      ),
    );
  }
}
