import 'package:flutter/material.dart';
import 'package:wallpaper_app/MainScreen.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff9f9f9),
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {Navigator.push(
                context, MaterialPageRoute(builder: (context) => const MainPage()));},
          icon: const Icon(Icons.arrow_back),
          iconSize: 35,
        ),
        title: const Text(
          'Favorite',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 25),
        ),
      ),
      body: const Center(
        child: Text('No favorite found',
        style: TextStyle(
          color: Color(0xffb6b6b6),
          fontSize: 20
        ),),
      ),
    );
  }
}
