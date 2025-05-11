import 'package:flutter/material.dart';

import '../../../../constants/app_colors.dart';

class SidePageIndicator extends StatelessWidget {
  const SidePageIndicator({
    super.key,
    required this.pageController,
    required int currentPage,
  }) : _currentPage = currentPage;

  final PageController pageController;
  final int _currentPage;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 30,
      top: 0,
      bottom: 0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(4, (index) {
          return GestureDetector(
            onTap: () {
              pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentPage == index
                    ? AppColors.primary
                    : Colors.white.withOpacity(0.3),
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}