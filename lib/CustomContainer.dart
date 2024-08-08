import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomContainer({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 65,
      decoration: BoxDecoration(
          color: const Color(0xffe0f4ff), borderRadius: BorderRadius.circular(50)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(
            index: 0,
            icon: 'assets/images/Exclude.png',
            label: 'Trending',
          ),
          _buildNavItem(
            index: 1,
            icon: 'assets/images/Recent.png',
            label: 'Recent',
          ),
          _buildNavItem(
            index: 2,
            icon: 'assets/images/New.png',
            label: 'New',
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required int index,
    required String icon,
    required String label,
  }) {
    final bool isSelected = currentIndex == index;

    return GestureDetector(
      onTap: () => onTap(index),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 14.0), 
        
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xff497ce9) : const Color(0xffe0f4ff),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          children: [
            ImageIcon(AssetImage(icon),
                color: isSelected ? Colors.white : const Color(0xff497ce9)),
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
