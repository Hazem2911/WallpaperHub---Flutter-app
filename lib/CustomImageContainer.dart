import 'package:flutter/material.dart';

class CustomImageContainer extends StatefulWidget {
  final AssetImage sora;

  const CustomImageContainer({super.key, required this.sora});

  @override
  State<CustomImageContainer> createState() => _CustomImageContainerState();
}

class _CustomImageContainerState extends State<CustomImageContainer> {
  Color _iconColor = Colors.white;

  void _toggleIconColor() {
    setState(() {
      _iconColor = _iconColor == Colors.white ? Colors.red : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          width: 115,
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: widget.sora,
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
    );
  }
}
