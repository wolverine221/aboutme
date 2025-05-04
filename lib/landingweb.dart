import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components.dart';
import 'package:portfolio/constant.dart';
import 'LandingMobile.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({Key? key}) : super(key: key);

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  final ScrollController _scrollController = ScrollController();
  bool _isScrolled = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.offset > 100 && !_isScrolled) {
      setState(() {
        _isScrolled = true;
      });
    } else if (_scrollController.offset <= 100 && _isScrolled) {
      setState(() {
        _isScrolled = false;
      });
    }
  }

  double _getFontSize(BoxConstraints constraints) {
    final width = constraints.maxWidth;
    if (width <= 480) return 8.0;
    if (width > 480 && width <= 960) return 22.0;
    return 22.0;
  }

  double _getFontSizemore(BoxConstraints constraints) {
    final width = constraints.maxWidth;
    if (width <= 480) return 6.0;
    if (width > 580 && width <= 1000) return 10.0;
    return 19.0;
  }

  double _getFontSizemin(BoxConstraints constraints) {
    final width = constraints.maxWidth;
    if (width <= 480) return 5.0;
    if (width > 480 && width <= 960) return 11.2;
    return 12.0;
  }

  double _getFontSizemain(BoxConstraints constraints) {
    final width = constraints.maxWidth;
    if (width <= 480) return 8.0;
    if (width > 480 && width <= 960) return 12.2;
    return 15.0;
  }

  double _getFontSizehead(BoxConstraints constraints) {
    final width = constraints.maxWidth;
    if (width <= 480) return 9.0;
    if (width > 480 && width <= 960) return 28.0;
    return 30.0;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final fontSize = _getFontSize(constraints);
        final fontSizehead = _getFontSizehead(constraints);
        final fontSizemin = _getFontSizemin(constraints);
        final fontSizemain = _getFontSizemain(constraints);
        final fontSizemore = _getFontSizemore(constraints);
        var h = MediaQuery.of(context).size.height;
        var w = MediaQuery.of(context).size.width;

        return Scaffold(
          backgroundColor: WebPrimary.kPrimaryColor,
          body: Stack(
            children: [
              // Animated background gradient
              AnimatedContainer(
                duration: Duration(milliseconds: 1000),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: _isScrolled
                        ? [
                            Color(0xFF0F2027),
                            Color(0xFF203A43),
                            Color(0xFF2C5364),
                          ]
                        : [
                            Color(0xFF000000),
                            Color(0xFF0F2027),
                            Color(0xFF203A43),
                          ],
                  ),
                ),
              ),
              
              // Floating particles
              Positioned.fill(
                child: IgnorePointer(
                  child: Container(
                    child: CustomPaint(
                      painter: ParticlePainter(isScrolled: _isScrolled),
                    ),
                  ),
                ),
              ),

              SingleChildScrollView(
                controller: _scrollController,
                child: Column(
                  children: [
                    // Navigation Bar
                    AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      height: h / 10,
                      padding: EdgeInsets.symmetric(horizontal: w / 10),
                      decoration: BoxDecoration(
                        color: _isScrolled
                            ? Colors.black.withOpacity(0.7)
                            : Colors.transparent,
                        boxShadow: _isScrolled
                            ? [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  blurRadius: 10,
                                  spreadRadius: 2,
                                )
                              ]
                            : [],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Rizvin K Salim',
                            style: GoogleFonts.spaceGrotesk(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              NavTab(taboption: 'Home', page: LandingPageMobile()),
                              NavTab(taboption: 'About', page: LandingPageMobile()),
                              NavTab(taboption: 'Resume', page: LandingPageMobile()),
                              NavTab(taboption: 'Skills', page: LandingPageMobile()),
                              NavTab(taboption: 'Project', page: LandingPageMobile()),
                              NavTab(taboption: 'Contact', page: LandingPageMobile()),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // Hero Section
                    Container(
                      height: h,
                      padding: EdgeInsets.symmetric(horizontal: w / 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FadeIn(
                                  duration: Duration(milliseconds: 800),
                                  child: Text(
                                    'Hi, I\'m',
                                    style: GoogleFonts.spaceGrotesk(
                                      fontSize: fontSizehead * 0.6,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                FadeIn(
                                  duration: Duration(milliseconds: 1000),
                                  child: Text(
                                    'Rizvin K Salim',
                                    style: GoogleFonts.spaceGrotesk(
                                      fontSize: fontSizehead * 1.5,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15),
                                FadeIn(
                                  duration: Duration(milliseconds: 1200),
                                  child: Text(
                                    'Front-end Software Developer',
                                    style: GoogleFonts.spaceGrotesk(
                                      fontSize: fontSizemin * 1.5,
                                      color: Color(0xFF4FC3F7),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 30),
                                FadeIn(
                                  duration: Duration(milliseconds: 1400),
                                  child: Container(
                                    width: w / 2,
                                    child: Text(
                                      'I am a frontend Flutter developer with expertise in UI/UX design and state management, crafting intuitive interfaces for cross-platform applications.',
                                      style: GoogleFonts.spaceGrotesk(
                                        fontSize: fontSizemin,
                                        color: Colors.white70,
                                        height: 1.6,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 40),
                                FadeIn(
                                  duration: Duration(milliseconds: 1600),
                                  child: Row(
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xFF4FC3F7),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 30, vertical: 15),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                        ),
                                        child: Text(
                                          'View Projects',
                                          style: GoogleFonts.spaceGrotesk(
                                            fontSize: fontSizemore,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 20),
                                      OutlinedButton(
                                        onPressed: () {},
                                        style: OutlinedButton.styleFrom(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 30, vertical: 15),
                                          side: BorderSide(
                                              color: Color(0xFF4FC3F7), width: 2),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                        ),
                                        child: Text(
                                          'Download CV',
                                          style: GoogleFonts.spaceGrotesk(
                                            fontSize: fontSizemore,
                                            color: Color(0xFF4FC3F7),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 50),
                          Expanded(
                            child: FadeIn(
                              duration: Duration(milliseconds: 1000),
                              child: Container(
                                height: h * 0.7,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xFF4FC3F7).withOpacity(0.5),
                                      blurRadius: 50,
                                      spreadRadius: 10,
                                    ),
                                  ],
                                  image: DecorationImage(
                                    image: AssetImage('asset/IMG_6788.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // About Section
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: w / 10, vertical: 100),
                      color: Colors.black.withOpacity(0.2),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Image.asset(
                              'asset/Programmer-rafiki.png',
                              height: 500,
                            ),
                          ),
                          SizedBox(width: 50),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'About Me',
                                  style: GoogleFonts.spaceGrotesk(
                                    fontSize: fontSizehead,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 30),
                                Container(
                                  height: 4,
                                  width: 100,
                                  color: Color(0xFF4FC3F7),
                                ),
                                SizedBox(height: 40),
                                InfoRow(
                                  label: 'Name:',
                                  value: 'Rizvin K Salim',
                                  fontSizemain: fontSizemain,
                                ),
                                SizedBox(height: 15),
                                InfoRow(
                                  label: 'DOB:',
                                  value: '07/12/2000',
                                  fontSizemain: fontSizemain,
                                ),
                                SizedBox(height: 15),
                                InfoRow(
                                  label: 'Email:',
                                  value: 'rizvin@example.com',
                                  fontSizemain: fontSizemain,
                                ),
                                SizedBox(height: 15),
                                InfoRow(
                                  label: 'From:',
                                  value: 'Kerala, India',
                                  fontSizemain: fontSizemain,
                                ),
                                SizedBox(height: 30),
                                Text(
                                  'About me:',
                                  style: GoogleFonts.spaceGrotesk(
                                    fontSize: fontSizemain,
                                    color: Colors.white70,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'With a B.Tech degree and hands-on experience, I specialize in Flutter for mobile apps, web apps, and websites, coupled with UI/UX design expertise using tools like Figma. I\'m dedicated to delivering high-quality solutions that exceed user expectations.',
                                  style: GoogleFonts.spaceGrotesk(
                                    fontSize: fontSizemain,
                                    color: Colors.white70,
                                    height: 1.6,
                                  ),
                                ),
                                SizedBox(height: 40),
                                Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xFF4FC3F7),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 30, vertical: 15),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                      ),
                                      child: Text(
                                        'Hire Me',
                                        style: GoogleFonts.spaceGrotesk(
                                          fontSize: fontSizemore,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    OutlinedButton(
                                      onPressed: () {},
                                      style: OutlinedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 30, vertical: 15),
                                        side: BorderSide(
                                            color: Color(0xFF4FC3F7), width: 2),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                      ),
                                      child: Text(
                                        'Download CV',
                                        style: GoogleFonts.spaceGrotesk(
                                          fontSize: fontSizemore,
                                          color: Color(0xFF4FC3F7),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Skills Section
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: w / 10, vertical: 100),
                      child: Column(
                        children: [
                          Text(
                            'Skills & Services',
                            style: GoogleFonts.spaceGrotesk(
                              fontSize: fontSizehead,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 30),
                          Container(
                            height: 4,
                            width: 100,
                            color: Color(0xFF4FC3F7),
                          ),
                          SizedBox(height: 50),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    SkillCard(
                                      skill: 'Flutter Development',
                                      percentage: 90,
                                      color: Color(0xFF4FC3F7),
                                    ),
                                    SizedBox(height: 20),
                                    SkillCard(
                                      skill: 'UI/UX Design',
                                      percentage: 85,
                                      color: Color(0xFF4FC3F7),
                                    ),
                                    SizedBox(height: 20),
                                    SkillCard(
                                      skill: 'Dart Programming',
                                      percentage: 88,
                                      color: Color(0xFF4FC3F7),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 40),
                              Expanded(
                                child: Column(
                                  children: [
                                    SkillCard(
                                      skill: 'Figma Design',
                                      percentage: 80,
                                      color: Color(0xFF4FC3F7),
                                    ),
                                    SizedBox(height: 20),
                                    SkillCard(
                                      skill: 'API Integration',
                                      percentage: 75,
                                      color: Color(0xFF4FC3F7),
                                    ),
                                    SizedBox(height: 20),
                                    SkillCard(
                                      skill: 'Git Version Control',
                                      percentage: 70,
                                      color: Color(0xFF4FC3F7),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // Footer
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 50),
                      color: Colors.black.withOpacity(0.5),
                      child: Column(
                        children: [
                          Text(
                            'Get In Touch',
                            style: GoogleFonts.spaceGrotesk(
                              fontSize: fontSizehead,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 30),
                          Container(
                            height: 4,
                            width: 100,
                            color: Color(0xFF4FC3F7),
                          ),
                          SizedBox(height: 50),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SocialIcon(icon: Icons.email, url: 'mailto:rizvin@example.com'),
                              SizedBox(width: 20),
                              SocialIcon(icon: Icons.link, url: 'https://linkedin.com'),
                              SizedBox(width: 20),
                              SocialIcon(icon: Icons.code, url: 'https://github.com'),
                            ],
                          ),
                          SizedBox(height: 50),
                          Text(
                            '© 2023 Rizvin K Salim. All Rights Reserved',
                            style: GoogleFonts.spaceGrotesk(
                              fontSize: fontSizemin,
                              color: Colors.white70,
                            ),
                          ),
                        ],
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

// Custom Widgets

class NavTab extends StatelessWidget {
  final String taboption;
  final Widget page;

  const NavTab({required this.taboption, required this.page});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        child: Text(
          taboption,
          style: GoogleFonts.spaceGrotesk(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  final String label;
  final String value;
  final double fontSizemain;

  const InfoRow({
    required this.label,
    required this.value,
    required this.fontSizemain,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: GoogleFonts.spaceGrotesk(
            fontSize: fontSizemain,
            color: Colors.white70,
          ),
        ),
        SizedBox(width: 10),
        Text(
          value,
          style: GoogleFonts.spaceGrotesk(
            fontSize: fontSizemain,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class SkillCard extends StatelessWidget {
  final String skill;
  final int percentage;
  final Color color;

  const SkillCard({
    required this.skill,
    required this.percentage,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              skill,
              style: GoogleFonts.spaceGrotesk(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            Text(
              '$percentage%',
              style: GoogleFonts.spaceGrotesk(
                fontSize: 14,
                color: Colors.white70,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Container(
          height: 8,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: 1000),
                width: (percentage / 100) * MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SocialIcon extends StatelessWidget {
  final IconData icon;
  final String url;

  const SocialIcon({required this.icon, required this.url});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Implement URL launch
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Color(0xFF4FC3F7), width: 2),
        ),
        child: Icon(
          icon,
          color: Colors.white,
          size: 24,
        ),
      ),
    );
  }
}

class ParticlePainter extends CustomPainter {
  final bool isScrolled;

  ParticlePainter({required this.isScrolled});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = isScrolled ? Color(0xFF4FC3F7).withOpacity(0.3) : Colors.white.withOpacity(0.1)
      ..strokeWidth = 1.0
      ..style = PaintingStyle.fill;

    final rng = Random(42); // Fixed seed for consistent particle placement
    final particleCount = 50;

    for (var i = 0; i < particleCount; i++) {
      final x = rng.nextDouble() * size.width;
      final y = rng.nextDouble() * size.height;
      final radius = rng.nextDouble() * 2 + 1;

      canvas.drawCircle(Offset(x, y), radius, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class FadeIn extends StatelessWidget {
  final Widget child;
  final Duration duration;

  const FadeIn({
    required this.child,
    this.duration = const Duration(milliseconds: 500),
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: duration,
      curve: Curves.easeInOut,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0.0, 20 * (1 - value)),
            child: child,
          ),
        );
      },
      child: child,
    );
  }
}