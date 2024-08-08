import 'package:flutter/material.dart';
import 'package:wallpaper_app/CustomImage2.dart';
import 'package:wallpaper_app/DownloadPage.dart';
import 'package:wallpaper_app/MainScreen.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {Navigator.push(
                context, MaterialPageRoute(builder: (context) => const MainPage()));},
          icon: const Icon(
            Icons.arrow_back,
            size: 35,
          ),
        ),
        title: const Text(
          'Categories',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 25),
        ),
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap:() {
                      Navigator.push(
                context, MaterialPageRoute(builder: (context) => const DownloadPage()));
                    },
                    child: const CustomImage(sora2: AssetImage('assets/images/Abstract.png'))),
                  const SizedBox(
                    height: 15,
                  ),
                  const CustomImage(sora2: AssetImage('assets/images/Bicycle.png')),
                  const SizedBox(
                    height: 15,
                  ),
                  const CustomImage(sora2: AssetImage('assets/images/Food.png')),
                  const SizedBox(
                    height: 15,
                  ),
                  const CustomImage(sora2: AssetImage('assets/images/God.png')),
                  const SizedBox(
                    height: 15,
                  ),
                  const CustomImage(sora2: AssetImage('assets/images/Plane.png')),
                  const SizedBox(
                    height: 15,
                  ),
                  const CustomImage(sora2: AssetImage('assets/images/Space.png')),
                ],
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomImage(sora2: AssetImage('assets/images/Art.png')),
                  SizedBox(
                    height: 15,
                  ),
                  CustomImage(sora2: AssetImage('assets/images/Bike.png')),
                  SizedBox(
                    height: 15,
                  ),
                  CustomImage(sora2: AssetImage('assets/images/Gaming.png')),
                  SizedBox(
                    height: 15,
                  ),
                  CustomImage(sora2: AssetImage('assets/images/Music.png')),
                  SizedBox(
                    height: 15,
                  ),
                  CustomImage(sora2: AssetImage('assets/images/Plant.png')),
                  SizedBox(
                    height: 15,
                  ),
                  CustomImage(sora2: AssetImage('assets/images/Travel.png')),
                ],
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomImage(sora2: AssetImage('assets/images/Beach3.png')),
                  SizedBox(
                    height: 15,
                  ),
                  CustomImage(sora2: AssetImage('assets/images/Car.png')),
                  SizedBox(
                    height: 15,
                  ),
                  CustomImage(sora2: AssetImage('assets/images/Girl.png')),
                  SizedBox(
                    height: 15,
                  ),
                  CustomImage(sora2: AssetImage('assets/images/Nature.png')),
                  SizedBox(
                    height: 15,
                  ),
                  CustomImage(sora2: AssetImage('assets/images/Rain.png')),
                  SizedBox(
                    height: 15,
                  ),
                  CustomImage(sora2: AssetImage('assets/images/WildLife.png')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
