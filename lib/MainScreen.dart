import 'package:flutter/material.dart';
import 'package:wallpaper_app/Categories.dart';
import 'package:wallpaper_app/CustomBottomNavigationBar.dart';
import 'package:wallpaper_app/Favorite.dart';
import 'package:wallpaper_app/Home.dart';
import 'package:wallpaper_app/Settings.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // ignore: non_constant_identifier_names
  int SelectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      SelectedIndex = index;
    });
  }

  final List<Widget> screens = [
    const Home(),
    const Categories(),
    const Favorite(),
    const Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[SelectedIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: SelectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
