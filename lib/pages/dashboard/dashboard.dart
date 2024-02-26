import 'package:flutter/material.dart';
import 'package:web_app_new/pages/dashboard/Image1.dart';
import 'package:web_app_new/pages/dashboard/Image2.dart';
import 'package:web_app_new/pages/dashboard/profile.dart';
import 'package:web_app_new/pages/dashboard/setting.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  var navScreens = [
    const Profile(),
    const ImageFirst(),
    const ImageSecond(),
    const Settings()
  ];

  // Define your navigation items
  List<NavItem> navItems = [
    NavItem(icon: Icons.home, label: 'Home'),
    NavItem(icon: Icons.image, label: 'First Slider'),
    NavItem(icon: Icons.image, label: 'Second Slider'),
    NavItem(icon: Icons.settings, label: 'Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 160,
            color: Colors.white,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  child: Text(
                    "Dashboard",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: List.generate(
                    navItems.length,
                    (index) => ListTile(
                      title: Icon(
                        navItems[index].icon,
                        color: _selectedIndex == index
                            ? Colors.black
                            : Colors.grey,
                      ),
                      subtitle: Center(child: Text(navItems[index].label)),
                      tileColor: _selectedIndex == index
                          ? Colors.black
                          : Colors.transparent,
                      onTap: () {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Main Content
          Expanded(
            child: navScreens.elementAt(_selectedIndex),
          ),
        ],
      ),
    );
  }
}

class NavItem {
  final IconData icon;
  final String label;

  NavItem({required this.icon, required this.label});
}
