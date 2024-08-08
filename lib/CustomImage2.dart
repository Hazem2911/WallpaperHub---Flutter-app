import 'package:flutter/material.dart';

class CustomImage extends StatefulWidget {
  final AssetImage sora2;
  const CustomImage({super.key, required this.sora2});

  @override
  State<CustomImage> createState() => _CustomImageState();
}

class _CustomImageState extends State<CustomImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115,
      height: 110,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: widget.sora2,
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
