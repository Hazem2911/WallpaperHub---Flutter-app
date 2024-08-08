import 'package:flutter/material.dart';
import 'package:wallpaper_app/CustomContainer.dart';
import 'package:wallpaper_app/CustomImageContainer.dart';
import 'package:wallpaper_app/category.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // ignore: non_constant_identifier_names
  int SelectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      SelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff9f9f9),
      body: Column(
        children: [
          const SizedBox(
            height: 55,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 35),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: BoxDecoration(
                    color: const Color(0xfff0f0f0),
                    borderRadius: BorderRadius.circular(80),
                  ),
                  child: const Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Find Wallpaper..',
                            hintStyle: TextStyle(color: Color(0xffb6b6b6)),
                          ),
                        ),
                      ),
                      Icon(Icons.search, color: Color(0xffb6b6b6)),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Stack(
                alignment: Alignment.topRight,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: ImageIcon(
                        AssetImage('assets/images/notification.png'),
                        size: 30,
                        color: Color(0xff191A23)),
                  ),
                  Positioned(
                    right: 18,
                    top: 2,
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17, right: 17),
            child: Column(
              children: [
                Container(
                  width: 450,
                  height: 200,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage('assets/images/CoalBlack.png'),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(20)),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 30,
                      height: 10,
                      decoration: BoxDecoration(
                          color: const Color(0xff989898),
                          borderRadius: BorderRadius.circular(27)),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 13,
                      height: 10,
                      decoration: BoxDecoration(
                          color: const Color(0xffe3e3e3),
                          borderRadius: BorderRadius.circular(27)),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 13,
                      height: 10,
                      decoration: BoxDecoration(
                          color: const Color(0xffe3e3e3),
                          borderRadius: BorderRadius.circular(27)),
                    )
                  ],
                ),
                const Row(
                  children: [
                    Text(
                      'Category',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                          color: Color(0xff29323b)),
                    ),
                    SizedBox(
                      width: 206,
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                          color: Color(0xff0071e3)),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CategoryPage()));
                      },
                      child: Image.asset(
                        'assets/images/Abstract.png',
                        width: 85,
                        height: 100,
                      ),
                    ),
                    Image.asset(
                      'assets/images/Gaming.png',
                      width: 85,
                      height: 100,
                    ),
                    Image.asset(
                      'assets/images/Music.png',
                      width: 85,
                      height: 100,
                    ),
                    Image.asset(
                      'assets/images/Girl.png',
                      width: 85,
                      height: 100,
                    )
                  ],
                ),
                CustomContainer(
                    currentIndex: SelectedIndex, onTap: onItemTapped),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          const Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 17, right: 17),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomImageContainer(
                            sora: const AssetImage('assets/images/forest.png')),
                        CustomImageContainer(
                            sora: const AssetImage('assets/images/beach.png')),
                        CustomImageContainer(
                            sora: const AssetImage('assets/images/road.png'))
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomImageContainer(
                            sora: const AssetImage('assets/images/baskin.png')),
                        CustomImageContainer(
                            sora: const AssetImage('assets/images/beach2.png')),
                        CustomImageContainer(
                            sora: const AssetImage('assets/images/todd.png'))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
