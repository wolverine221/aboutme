import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/app_colors.dart';
import 'package:portfolio/presentation/design/screens/widgets/sidePageIndicator.dart';

import 'PageSection/AboutSection.dart';
import 'PageSection/ContactSection.dart';
import 'PageSection/HomeSection.dart';
import 'PageSection/ProjectSection.dart';




class PortfolioWebPage extends StatefulWidget {
  final bool isMobile;
  const PortfolioWebPage({super.key,this.isMobile=false});

  @override
  State<PortfolioWebPage> createState() => _PortfolioWebPageState();
}

class _PortfolioWebPageState extends State<PortfolioWebPage> {
  final PageController pageController = PageController(
    viewportFraction: 0.99,
  );
  int _currentPage = 0;
  final List<String> navItems = ['HOME', 'ABOUT', 'PROJECTS', 'CONTACT'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: navItems.map((item) {
            int index = navItems.indexOf(item);
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: InkWell(
                onTap: () {
                  pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      item,
                      style: GoogleFonts.spaceGrotesk(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: _currentPage == index
                            ? AppColors.primary
                            : Colors.white,
                      ),
                    ),
                    const SizedBox(height: 4),
                    if (_currentPage == index)
                      Container(
                        height: 3,
                        width: 20,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            scrollDirection: Axis.vertical,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: [
              HomeSection(pageController: pageController,currentPage: _currentPage ),
              AboutSection(isMobile: widget.isMobile,),
              ProjectsSection(isMobile: widget.isMobile,),
              const ContactSection(),
            ],
          ),

          SidePageIndicator(pageController: pageController, currentPage: _currentPage),
        ],
      ),
    );
  }
}













