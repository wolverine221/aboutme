import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/app_colors.dart';
import 'package:portfolio/constants/app_textstyle.dart';

class AboutSection extends StatefulWidget {
  const AboutSection({super.key});

  @override
  State<AboutSection> createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
  late Animation<double> _scaleAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.5, curve: Curves.easeInOut),
      ),
    );

    _scaleAnimation = Tween<double>(begin: 0.9, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.3, 1.0, curve: Curves.elasticOut),
      ),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0.0, 0.2),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.2, 0.8, curve: Curves.easeOutQuad),
      ),
    );

    // Start animation after build
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.mediumAccent,
      padding: const EdgeInsets.all(40),
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return FadeTransition(
            opacity: _opacityAnimation,
            child: ScaleTransition(
              scale: _scaleAnimation,
              child: Row(
            children: [
            Expanded(
            flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FadeInDown(
                    duration: const Duration(milliseconds: 700),
                    child: Text(
                      'ABOUT ME',
                      style: AppTextStyles.xxlMidBold.copyWith(
                        color: AppColors.primary,
                        letterSpacing: 3,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  FadeInLeft(
                    delay: const Duration(milliseconds: 200),
                    duration: const Duration(milliseconds: 800),
                    child: Text(
                      'I\'m a boundary-pushing\nfront-end developer\nbased in the digital cosmos',
                      style: AppTextStyles.aboutSubTitle,
                    ),
                  ),
                  const SizedBox(height: 30),
                  FadeInLeft(
                    delay: const Duration(milliseconds: 400),
                    child: Text(
                      'With a fusion of technical precision and artistic rebellion, '
                          'I create digital experiences that challenge norms and engage '
                          'users on a visceral level. My work exists at the intersection '
                          'of code and creativity.',
                      style: GoogleFonts.spaceGrotesk(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.white.withOpacity(0.8),
                        height: 1.6,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: List.generate(Skills.length, (i) {
                      return FadeInUp(
                        delay: Duration(milliseconds: 500 + (i * 100)),
                        child: SkillList(Skills[i]),
                      );
                    }),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: BounceInDown(
                  delay: const Duration(milliseconds: 400),
                  duration: const Duration(milliseconds: 1200),
                  child: Container(
                    width: 500,
                    height: 500,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors.primary,
                        width: 2,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.primary.withOpacity(0.4),
                          blurRadius: 20,
                          spreadRadius: 5,
                        ),
                      ],
                      image: const DecorationImage(
                        image: AssetImage('asset/images/IMG_6788.jpg'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            ],
          ),
          ),
          );
        },
      ),
    );
  }

  Widget _buildAnimatedSkillChip(String text, int index) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final delay = 0.5 + (index * 0.05);
        final animation = Tween<double>(
          begin: 0.0,
          end: 1.0,
        ).animate(
          CurvedAnimation(
            parent: _controller,
            curve: Interval(
              delay.clamp(0.0, 1.0),
              1.0,
              curve: Curves.easeOutBack,
            ),
          ),
        );

        return Transform.scale(
          scale: animation.value,
          child: Opacity(
            opacity: animation.value,
            child: child,
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.primary.withOpacity(0.2),
              AppColors.primary.withOpacity(0.1),
            ],
          ),
          border: Border.all(color: AppColors.primary),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: GoogleFonts.spaceGrotesk(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

Widget SkillList(String text) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          AppColors.primary.withOpacity(0.2),
          AppColors.primary.withOpacity(0.1),
        ],
      ),
      border: Border.all(color: AppColors.primary),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Text(
      text,
      style: GoogleFonts.spaceGrotesk(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    ),
  );
}


final List<String> Skills = [
  'Flutter',
  'UI/UX',
  'Getx State Management',
  'Bloc State Management',
  'Figma',
  'Adobe Photoshop',
  'Git',
  'Adobe Premiere Pro',
  'Canva',
  'Experimental Design',
];
