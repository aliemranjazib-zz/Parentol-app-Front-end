import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parentol/tabs/apps_tab.dart';
import 'package:parentol/tabs/geo_tab.dart';
import 'package:parentol/tabs/home_tab.dart';
import 'package:parentol/tabs/stats_tab.dart';
import 'package:parentol/tabs/time_tabnew.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).accentColor,
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Expanded(
                  child: _currentIndex == 0
                      ? AppsTab()
                      : _currentIndex == 1
                          ? TimeTab()
                          : _currentIndex == 2
                              ? HomeTab()
                              : _currentIndex == 3
                                  ? GeoTab()
                                  : StatsTab(),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Theme.of(context).primaryColor,
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: TextStyle(color: Color(0xffA7A8AC)))),
        child: BottomNavigationBar(
          onTap: _onTabTapped,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Image(
                image: Svg('assets/child-home-apps.svg'),
                width: 20,
                height: 20,
              ),
              activeIcon: Image(
                image: Svg('assets/child-home-apps-active.svg'),
                width: 20,
                height: 20,
              ),
              label: 'Apps',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: Svg('assets/child-home-time.svg'),
                width: 20,
                height: 20,
              ),
              activeIcon: Image(
                image: Svg('assets/child-home-time-active.svg'),
                width: 20,
                height: 20,
              ),
              label: 'Time',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: Svg('assets/child-home-home.svg'),
                width: 20,
                height: 20,
              ),
              activeIcon: Image(
                image: Svg('assets/child-home-home-active.svg'),
                width: 20,
                height: 20,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: Svg('assets/child-home-geo.svg'),
                width: 20,
                height: 20,
              ),
              activeIcon: Image(
                image: Svg('assets/child-home-geo-active.svg'),
                width: 20,
                height: 20,
              ),
              label: 'Geo',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: Svg('assets/child-home-stats.svg'),
                width: 20,
                height: 20,
              ),
              activeIcon: Image(
                image: Svg('assets/child-home-stats-active.svg'),
                width: 20,
                height: 20,
              ),
              label: 'Stats',
            ),
          ],
        ),
      ),
    );
  }

  void _onTabTapped(int value) {
    setState(() {
      _currentIndex = value;
    });
  }
}
