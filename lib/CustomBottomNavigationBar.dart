import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavigationBar({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only( top: 24 , bottom: 25 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(
            index: 0,
            icon: 'assets/images/home.png',
            label: 'Home',
          ),
          _buildNavItem(
            index: 1,
            icon: 'assets/images/categories.png',
            label: 'Category',
          ),
          _buildNavItem(
            index: 2,
            icon: 'assets/images/heart.png',
            label: 'Favorite',
          ),
          _buildNavItem(
            index: 3,
            icon: 'assets/images/settings.png',
            label: 'Settings',
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
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xfff0f0f0) : Colors.transparent,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: [
            ImageIcon(AssetImage(icon), color: isSelected ? const Color(0xff292d32) : const Color(0xffa8a8a8)),
            if (isSelected)
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  label,
                  style: const TextStyle(
                    color: Color(0xff292d32),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
