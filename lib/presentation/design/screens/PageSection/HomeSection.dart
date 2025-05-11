import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants/app_colors.dart';

class HomeSection extends StatefulWidget {
  final PageController pageController;
  final int currentPage;

  const HomeSection({
    super.key,
    required this.pageController,
    required this.currentPage,
  });

  @override
  State<HomeSection> createState() => _HomeSectionState();
}

class _HomeSectionState extends State<HomeSection> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _opacityAnimation;
  late Animation<double> _scaleAnimation;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _bgScale;
  late Animation<double> _bgRotate;
  late Animation<double> _textGlow;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    _bgScale = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.0, 0.6, curve: Curves.easeOutBack),
      ),
    );

    _bgRotate = Tween<double>(begin: 0.1, end: 0.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.2, 0.8, curve: Curves.easeInOut),
      ),
    );

    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.3, 0.8, curve: Curves.easeIn),
      ),
    );

    _scaleAnimation = Tween<double>(begin: 0.7, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.4, 1.0, curve: Curves.elasticOut),
      ),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0.0, 0.3),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.5, 1.0, curve: Curves.easeOutQuad),
      ),
    );

    _textGlow = TweenSequence<double>([
      TweenSequenceItem(tween: Tween<double>(begin: 0.0, end: 1.0), weight: 1),
      TweenSequenceItem(tween: Tween<double>(begin: 1.0, end: 0.3), weight: 1),
    ]).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColors.bgDark,
                AppColors.darkAccent,
              ],
            ),
          ),
          child: Stack(
            children: [
              // Animated background shape
              Positioned(
                top: 400,
                right: -100,
                child: Transform.scale(
                  scale: _bgScale.value,
                  child: Transform.rotate(
                    angle: _bgRotate.value,
                    child: Container(
                      height: size.height,
                      width: size.width / 2,
                      decoration: BoxDecoration(
                        color: AppColors.primary.withOpacity(0.8),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(300.r),
                          bottomRight: Radius.circular(100.r),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.primary.withOpacity(0.5),
                            blurRadius: 20,
                            spreadRadius: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // Background text
              Positioned(
                right: -100,
                top: 100,
                child: Transform.rotate(
                  angle: 0.5,
                  child: Text(
                    'DEVELOPER',
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 120,
                      fontWeight: FontWeight.w900,
                      color: AppColors.white.withOpacity(0.05),
                    ),
                  ),
                ),
              ),

              // Profile image
              Align(
                alignment: Alignment.bottomRight,
                child: FadeTransition(
                  opacity: _opacityAnimation,
                  child: Padding(
                    padding: EdgeInsets.only(right: 20.w, bottom: 0.h),
                    child: Image.asset(
                      'asset/images/dpimage.png',
                      height: size.height * 0.7,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),

              // Main content
              Padding(
                padding: const EdgeInsets.all(40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SlideTransition(
                      position: _slideAnimation,
                      child: ScaleTransition(
                        scale: _scaleAnimation,
                        child: FadeTransition(
                          opacity: _opacityAnimation,
                          child: AnimatedBuilder(
                            animation: _textGlow,
                            builder: (context, child) {
                              return Text(
                                'FRONT END\nDEVELOPER',
                                style: GoogleFonts.spaceGrotesk(
                                  fontSize: 72,
                                  fontWeight: FontWeight.w900,
                                  height: 0.9,
                                  color: AppColors.primary,
                                  shadows: [
                                    Shadow(
                                      color: AppColors.primary.withOpacity(_textGlow.value),
                                      blurRadius: 8,
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    FadeTransition(
                      opacity: _opacityAnimation,
                      child: Text(
                        'CRAFTING DIGITAL EXPERIENCES\nTHAT DEFY CONVENTION',
                        style: GoogleFonts.spaceGrotesk(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 40.h),
                    FadeTransition(
                      opacity: _opacityAnimation,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            widget.pageController.animateToPage(
                              3,
                              duration: const Duration(milliseconds: 800),
                              curve: Curves.easeInOutCubic,
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 40.w,
                              vertical: 16.h,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.secondary,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(30.r),
                              boxShadow: [
                              ],
                            ),
                            child: Text(
                              'EXPLORE MY WORLD →',
                              style: GoogleFonts.spaceGrotesk(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: AppColors.primary,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
