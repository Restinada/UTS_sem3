import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ujian_tengah_semester/Page/favorit_page.dart';
import 'package:ujian_tengah_semester/Page/home_page.dart';
import 'package:ujian_tengah_semester/Page/recipe_page.dart';
import 'package:ujian_tengah_semester/Page/profile_page.dart';
import 'package:ujian_tengah_semester/Page/setting_page.dart';

class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({super.key});

  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  int index = 0;
  final screen = const [
    HomePage(),
    RecipePage(),
    FavoritePage(),
    ProfilePage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[index],
      bottomNavigationBar: CurvedNavigationBar(
        items: const [
          Icon(
            Icons.home,
            color: Colors.greenAccent,
          ),
          Icon(
            Icons.favorite,
            color: Colors.greenAccent,
          ),
          Icon(
            Icons.person,
            color: Colors.greenAccent,
          ),
          Icon(
            Icons.settings,
            color: Colors.greenAccent,
          ),
        ],
        backgroundColor: Colors.transparent,
        color: Colors.white,
        buttonBackgroundColor: Colors.black,
        index: index,
        onTap: (index) {
          setState(() {
            this.index = index;
          });
        },
      ),
    );
  }
}
