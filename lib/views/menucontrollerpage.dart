import 'package:flutter/material.dart';
import 'package:sismo_rsia_zainab/views/dashboardpage.dart';
import 'package:sismo_rsia_zainab/views/homepage.dart';
import 'package:sismo_rsia_zainab/views/profilepage.dart';

class MenuControllePage extends StatefulWidget {
  const MenuControllePage({Key? key}) : super(key: key);

  @override
  _MenuControllePageState createState() => _MenuControllePageState();
}

class _MenuControllePageState extends State<MenuControllePage> {
  int tabIndex = 0;
  late List<Widget> listScreens;

  String homeTab = "Home";
  String dashboardTab = "Dashboard";
  String profileTab = "Profile";

  @override
  void initState() {
    listScreens = [
      const HomePage(),
      const DashboardPage(),
      const ProfilePage(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listScreens[tabIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey[400],
          backgroundColor: Theme.of(context).primaryColor,
          currentIndex: tabIndex,
          onTap: (int index) {
            setState(() {
              tabIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: homeTab,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.analytics),
              label: dashboardTab,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.settings),
              label: profileTab,
            ),
          ]),
    );
  }
}
