import 'package:flutter/material.dart';
import 'package:wallpaper_app/MainScreen.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({super.key});

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  // Variables to hold the download state
  bool isDownloaded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff5d5d5d),
      appBar: AppBar(
        backgroundColor: const Color(0xff5d5d5d),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const MainPage()));
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 35,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/images/Abstract2.png',
            width: 600,
            height: 700,
          ),
          Container(
            width: 250,
            height: 50,
            decoration: BoxDecoration(
              color: isDownloaded ? Colors.green : Colors.black,
              borderRadius: BorderRadius.circular(30),
            ),
            child: TextButton(
              onPressed: () {
                setState(() {
                  isDownloaded = true;
                });
              },
              child: isDownloaded
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.check, color: Colors.white),
                        SizedBox(width: 10),
                        Text(
                          'Downloaded',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )
                  : const Text(
                      'Download',
                      style: TextStyle(color: Colors.white),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
