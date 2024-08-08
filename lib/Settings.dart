import 'package:flutter/material.dart';
import 'package:wallpaper_app/CustomRow.dart';
import 'package:wallpaper_app/MainScreen.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isToggled = false;
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
          'Settings',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 25),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 350,
              height: 500,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(35),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 5), 
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 7.0, top: 20),
                child: Column(
                  children: [
                    CustomRow(
                        elsora: const AssetImage('assets/images/Snapchat.png'),
                        klam: 'Push Notifications',
                        zorar: IconButton(
                            onPressed: () {
                              setState(() {
                                isToggled = !isToggled;
                              });
                            },
                            icon: Icon(
                              isToggled ? Icons.toggle_on : Icons.toggle_off,
                              color: isToggled
                                  ? const Color(0xff191e31)
                                  : Colors.grey,
                              size: 60,
                            ))),
                    Row(
                      children: [
                        const SizedBox(
                          width: 45,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Color(0xffc5c5c5),
                          ),
                          width: 285,
                          height: 0.8,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    CustomRow(
                        elsora: const AssetImage('assets/images/Message.png'),
                        klam: 'Invite a friend',
                        zorar: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 20,
                              color: Color(0xffc5c5c5),
                            ))),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 45,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Color(0xffc5c5c5),
                          ),
                          width: 285,
                          height: 0.8,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    CustomRow(
                        elsora: const AssetImage('assets/images/Star.png'),
                        klam: 'Rate this app',
                        zorar: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 20,
                              color: Color(0xffc5c5c5),
                            ))),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 45,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Color(0xffc5c5c5),
                          ),
                          width: 285,
                          height: 0.8,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    CustomRow(
                        elsora: const AssetImage('assets/images/Chat.png'),
                        klam: 'Feedback & bugs',
                        zorar: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 20,
                              color: Color(0xffc5c5c5),
                            ))),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 45,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Color(0xffc5c5c5),
                          ),
                          width: 285,
                          height: 0.8,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    CustomRow(
                        elsora: const AssetImage('assets/images/Notes.png'),
                        klam: 'Terms & Conditions',
                        zorar: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 20,
                              color: Color(0xffc5c5c5),
                            ))),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 45,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Color(0xffc5c5c5),
                          ),
                          width: 285,
                          height: 0.8,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    CustomRow(
                        elsora: const AssetImage('assets/images/Privacy.png'),
                        klam: 'Privacy Policy',
                        zorar: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 20,
                              color: Color(0xffc5c5c5),
                            ))),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30,),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    InkWell(
                      onTap: (){},
                      child: Image.asset('assets/images/Instagram.png' , width: 40,)),
                    const SizedBox(width: 25,),
                    InkWell(
                      onTap: (){},
                      child: Image.asset('assets/images/Facebook.png' , width: 40,)),
                    const SizedBox(width: 25,),
                    InkWell(
                      onTap: (){},
                      child: Image.asset('assets/images/Twitter.png' , width: 40,)),
                  ],
                ),
                const SizedBox(height: 10,),
                const Text('Like & Follow us on' , 
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18
                ),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
