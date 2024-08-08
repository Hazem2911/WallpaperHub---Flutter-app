import 'package:flutter/material.dart';
import 'package:wallpaper_app/MainScreen.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  Color _iconColor = Colors.white;

  void _toggleIconColor() {
    setState(() {
      _iconColor = _iconColor == Colors.white ? Colors.red : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const MainPage()));
          },
          icon: const Icon(Icons.arrow_back),
          iconSize: 35,
        ),
        title: const Text(
          'Abstract',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 30),
        ),
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 14.0, right: 14),
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Container(
                          width: 185,
                          height: 300,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/images/baskin.png'),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Positioned(
                          child: IconButton(
                            onPressed: _toggleIconColor,
                            icon: Icon(
                              Icons.favorite_border,
                              color: _iconColor,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Container(
                          width: 185,
                          height: 300,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/images/baskin.png'),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Positioned(
                          child: IconButton(
                            onPressed: _toggleIconColor,
                            icon: Icon(
                              Icons.favorite_border,
                              color: _iconColor,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Container(
                          width: 185,
                          height: 300,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/images/baskin.png'),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Positioned(
                          child: IconButton(
                            onPressed: _toggleIconColor,
                            icon: Icon(
                              Icons.favorite_border,
                              color: _iconColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Container(
                        width: 185,
                        height: 300,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/images/todd.png'),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Positioned(
                        child: IconButton(
                          onPressed: _toggleIconColor,
                          icon: Icon(
                            Icons.favorite_border,
                            color: _iconColor,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Container(
                        width: 185,
                        height: 300,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/images/todd.png'),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Positioned(
                        child: IconButton(
                          onPressed: _toggleIconColor,
                          icon: Icon(
                            Icons.favorite_border,
                            color: _iconColor,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Container(
                        width: 185,
                        height: 300,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/images/todd.png'),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Positioned(
                        child: IconButton(
                          onPressed: _toggleIconColor,
                          icon: Icon(
                            Icons.favorite_border,
                            color: _iconColor,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
